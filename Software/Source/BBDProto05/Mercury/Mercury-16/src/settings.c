/*
 * settings.c
 *
 * Created: 2017-03-07 16:16:18
 *  Author: Andras Fuchs
 */ 

#include "settings.h"
#include <adc.h>
#include <udc.h>
#include <udd.h>


void settings_load_defaults()
{
	nvm_wait_until_ready();
	
	struct nvm_device_id device_id;
	nvm_read_device_id(&device_id);

	struct nvm_device_serial device_serial;
	nvm_read_device_serial(&device_serial);

	// (!!) the setting should be set manually

	settings.choice = 0xF004;
	settings.length = sizeof(settings) - 4;
	settings.firmware_version = 0x0002;
	settings.test_mode = 0; // 0 - test mode off, 1 - simple test mode, send ticks, 2 - send
	settings.device_status = 1;
	//settings.device_type = 1;	// (!!) 0 - unknown, 1 - cell , 2 - organizer
	settings.device_index = 0x36; // (!!) master: 0x36, slaves: 0x11 0x22 - change this for auto-configuration
	settings.device_id = (device_id.devid0 * 65536) + (device_id.devid1 * 256) + device_id.devid2;
	settings.device_serial = (device_serial.lotnum0 * 16777216) + (device_serial.wafnum * 65536) + (device_serial.coordx0 * 256) + device_serial.coordy0;
	settings.clk_sys = sysclk_get_per_hz();
	settings.clk_adc = 93750UL;
	//settings.adc_enabled = false;  // (!!) ADC should be enabled for cells and disabled for the organizer
	settings.adca_enabled = adc_is_enabled(&ADCA);
	settings.adcb_enabled = adc_is_enabled(&ADCB);
	settings.adc_bits = 12;
	settings.adc_ref = (uint8_t)ADC_REFSEL_INT1V_gc;
	//settings.adc_ref = (uint8_t)ADC_REFSEL_INTVCC_gc;
	settings.adc_gain = 8;
	settings.sample_rate = 4000;  // sample rate should be fixed to 1kSPS for now
	settings.sample_rate_compensation = 0;
	settings.channel_count = 8;
	settings.dac_enabled = false;
	//settings.usb_enabled = false;  // (!!) USB should be enabled for the organizer and disabled for the cells
	settings.usb_address = udd_getaddress();
	settings.usb_speed = (udd_is_high_speed() ? 480000000UL : 12000000UL);
	settings.usart_enabled = false;  // USART should be enabled for both the cells and the organizer
	//settings.usart_mode = 3; // (!!) 1 - async, 2 - sync master (organizer), 3 - sync slave (cell)
	settings.usart_speed = 1200; // the minumum speed should be [adc_value_bits] * [sample rate] * [channel_count] * [cell count] * 1.2 (for the overhead)
	
	settings.goertzel_enabled = false;
	settings.goertzel_frequency_01 = 7.83f;
	settings.goertzel_frequency_02 = 23.88f;
	settings.goertzel_frequency_03 = 50.00f;
	
	settings.adc_value_bits = 16;
	settings.adc_value_count_per_packet = settings.sample_rate / 60 < MAX_ADC_VALUES_PER_PACKET ?  settings.sample_rate / 60 : MAX_ADC_VALUES_PER_PACKET; // we must guarantee the 60 fps refresh rate

	//settings.adc_value_packet_to_usb = false;  // (!!)
	//settings.adc_value_packet_to_usart = true;  // (!!)
	//settings.goertzel_packet_to_usb = false;  // (!!)
	//settings.goertzel_packet_to_usart = false;  // (!!)

	// it just makes the testing easier, comment it in production
	if (settings.device_index == 0x36)
	{
		settings.device_type = 2;						// 0 - unknown, 1 - cell , 2 - organizer
		settings.adc_enabled = false;					// ADC should be enabled for cells and disabled for the organizer
		settings.usb_enabled = true;					// USB should be enabled for the organizer and disabled for the cells
		settings.usart_mode = 2;						// 1 - async, 2 - sync master (organizer), 3 - sync slave (cell)
		settings.adc_value_packet_to_usb = true;
		settings.adc_value_packet_to_usart = false;
		settings.goertzel_packet_to_usb = false;
		settings.goertzel_packet_to_usart = false;
	}

	if ((settings.device_index == 0x11) || (settings.device_index == 0x22))
	{
		settings.device_type = 1;						// (!!) 0 - unknown, 1 - cell , 2 - organizer
		settings.adc_enabled = true;					// (!!) ADC should be enabled for cells and disabled for the organizer
		settings.usb_enabled = false;					// (!!) USB should be enabled for the organizer and disabled for the cells
		settings.usart_mode = 3;						// (!!) 1 - async, 2 - sync master (organizer), 3 - sync slave (cell)
		settings.adc_value_packet_to_usb = false;		// (!!)
		settings.adc_value_packet_to_usart = true;		// (!!)
		settings.goertzel_packet_to_usb = false;
		settings.goertzel_packet_to_usart = true;
	}
	
	settings.adc_enabled = true;
}

void settings_load(CellSettings_t new_settings)
{
	CellSettings_t old_settings = settings;
	
	// copy all fields except the read only ones
	settings.test_mode = new_settings.test_mode;
	
	settings.device_type = new_settings.device_type;
	settings.device_index = new_settings.device_index;

	settings.clk_adc = new_settings.clk_adc;
	
	settings.adc_enabled = new_settings.adc_enabled;
	settings.adca_enabled = new_settings.adca_enabled;
	settings.adcb_enabled = new_settings.adcb_enabled;
	settings.adc_bits = new_settings.adc_bits;
	settings.adc_ref = new_settings.adc_ref;
	settings.adc_gain = new_settings.adc_gain;
	
	settings.sample_rate = new_settings.sample_rate;
	settings.sample_rate_compensation = new_settings.sample_rate_compensation;
	
	settings.channel_count = new_settings.channel_count;
	
	settings.dac_enabled = new_settings.dac_enabled;
	settings.usb_enabled = new_settings.usb_enabled;
	
	settings.usart_enabled = new_settings.usart_enabled;
	settings.usart_mode = new_settings.usart_mode;
	settings.usart_speed = new_settings.usart_speed;
	
	settings.goertzel_enabled = new_settings.goertzel_enabled;
	settings.goertzel_frequency_01 = new_settings.goertzel_frequency_01;
	settings.goertzel_frequency_02 = new_settings.goertzel_frequency_02;
	settings.goertzel_frequency_03 = new_settings.goertzel_frequency_03;
	
	settings.adc_value_bits = new_settings.adc_value_bits;
	settings.adc_value_count_per_packet = new_settings.adc_value_count_per_packet;
	
	settings.adc_value_packet_to_usb = new_settings.adc_value_packet_to_usb;
	settings.adc_value_packet_to_usart = new_settings.adc_value_packet_to_usart;
	settings.goertzel_packet_to_usb = new_settings.goertzel_packet_to_usb;
	settings.goertzel_packet_to_usart = new_settings.goertzel_packet_to_usart;
	
	settings_changed_callback(&old_settings, settings);
}