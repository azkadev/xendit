/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class ListAllInvoice {
  Map rawData;

  ListAllInvoice(this.rawData);

  static Map get defaultData {
    return {
      "@type": "ok",
      "datas": [
        {
          "id": "63de9f1099c9419bdf5266c7",
          "external_id": "asasmalsm",
          "user_id": "610836e3824b6140a513dc38",
          "status": "EXPIRED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 100000,
          "expiry_date": "2023-02-04T18:14:52.864Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/63de9f1099c9419bdf5266c7",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 100000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 100000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 100000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 100000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 100000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2023-02-04T18:08:17.642Z",
          "updated": "2023-02-04T18:14:52.865Z",
          "currency": "IDR",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        },
        {
          "id": "638b22010c639e4bdfd4b2e5",
          "external_id": "clone_bot:",
          "user_id": "610836e3824b6140a513dc38",
          "payment_method": "EWALLET",
          "status": "SETTLED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 10000,
          "paid_amount": 10000,
          "paid_at": "2022-12-03T10:18:54.469Z",
          "expiry_date": "2022-12-04T10:16:34.269Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/638b22010c639e4bdfd4b2e5",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 10000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 10000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 10000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 10000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 10000,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2022-12-03T10:16:34.888Z",
          "updated": "2022-12-05T18:01:24.156Z",
          "currency": "IDR",
          "payment_channel": "DANA",
          "payment_id": "ewc_58968047-7359-43ff-bc21-520803db3b0c",
          "payment_method_id": "pm-facf2876-ad9d-4ec2-ba11-e62a142d30a7",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        },
        {
          "id": "63465b0b219583274fffed91",
          "external_id": "verify:account:temp_id_1",
          "user_id": "610836e3824b6140a513dc38",
          "payment_method": "EWALLET",
          "status": "SETTLED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 102500,
          "paid_amount": 102500,
          "paid_at": "2022-10-12T06:13:42.780Z",
          "description":
              "Verify account + activated wallet + api + free services galaxeus - biaya admin 2500",
          "expiry_date": "2022-10-13T06:13:31.182Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/63465b0b219583274fffed91",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2022-10-12T06:13:31.719Z",
          "updated": "2022-10-13T18:00:40.985Z",
          "currency": "IDR",
          "payment_channel": "DANA",
          "payment_id": "ewc_bbd55753-c666-4b41-9cf2-1cb37a48d6f7",
          "payment_method_id": "pm-d7696ff4-ccbd-4845-8cb8-76e69ff3774c",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        },
        {
          "id": "634653765e4bd4a2ec09d459",
          "external_id": "verify:account:temp_id_1",
          "user_id": "610836e3824b6140a513dc38",
          "payment_method": "EWALLET",
          "status": "SETTLED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 102500,
          "paid_amount": 102500,
          "paid_at": "2022-10-12T05:41:24.609Z",
          "description":
              "Verify account + activated wallet + api + free services galaxeus - biaya admin 2500",
          "expiry_date": "2022-10-13T05:41:10.735Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/634653765e4bd4a2ec09d459",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2022-10-12T05:41:11.497Z",
          "updated": "2022-10-13T18:00:40.985Z",
          "currency": "IDR",
          "payment_channel": "DANA",
          "payment_id": "ewc_dfc9217b-dac9-43ba-af74-c2a59afbbf50",
          "payment_method_id": "pm-c5e50b29-3352-4a5f-a4c5-6b57b79dfaf0",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        },
        {
          "id": "634650355e4bd48ef809d42f",
          "external_id": "verify:account:temp_id_1",
          "user_id": "610836e3824b6140a513dc38",
          "payment_method": "EWALLET",
          "status": "SETTLED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 102500,
          "paid_amount": 102500,
          "paid_at": "2022-10-12T05:27:32.321Z",
          "description":
              "Verify account + activated wallet + api + free services galaxeus - biaya admin 2500",
          "expiry_date": "2022-10-13T05:27:17.327Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/634650355e4bd48ef809d42f",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2022-10-12T05:27:17.899Z",
          "updated": "2022-10-13T18:00:40.985Z",
          "currency": "IDR",
          "payment_channel": "DANA",
          "payment_id": "ewc_830b1192-bf9f-4d2f-92c5-7fc0e86dbc90",
          "payment_method_id": "pm-1c4db075-3a91-4aad-a440-998d0a930847",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        },
        {
          "id": "634542ab01f0bec983b44f5e",
          "external_id": "verify:account:temp_id_5",
          "user_id": "610836e3824b6140a513dc38",
          "payment_method": "EWALLET",
          "status": "SETTLED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 102500,
          "paid_amount": 102500,
          "paid_at": "2022-10-11T10:17:41.059Z",
          "description":
              "Verify account + activated wallet + api + free services galaxeus - biaya admin 2500",
          "expiry_date": "2022-10-12T10:17:15.442Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/634542ab01f0bec983b44f5e",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2022-10-11T10:17:16.178Z",
          "updated": "2022-10-12T18:03:49.586Z",
          "currency": "IDR",
          "payment_channel": "DANA",
          "payment_id": "ewc_2d6259b9-bd26-4818-8c75-ad7dc0675b61",
          "payment_method_id": "pm-c41cb40c-2ce4-4953-b75a-8daf35e23535",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        },
        {
          "id": "63453cf225625f3871e07107",
          "external_id": "verify:account:temp_id_4",
          "user_id": "610836e3824b6140a513dc38",
          "payment_method": "EWALLET",
          "status": "SETTLED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 102500,
          "paid_amount": 102500,
          "paid_at": "2022-10-11T09:53:21.856Z",
          "description":
              "Verify account + activated wallet + api + free services galaxeus - biaya admin 2500",
          "expiry_date": "2022-10-12T09:52:50.995Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/63453cf225625f3871e07107",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2022-10-11T09:52:51.726Z",
          "updated": "2022-10-12T18:03:49.586Z",
          "currency": "IDR",
          "payment_channel": "DANA",
          "payment_id": "ewc_d1fd11e8-2572-48c2-8fb0-2d5df3e4e93f",
          "payment_method_id": "pm-1164fb55-15a4-4c52-855f-4fd5b534d02f",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        },
        {
          "id": "634526ec25625f7d3ce06f2a",
          "external_id": "verify:account:temp_id_2",
          "user_id": "610836e3824b6140a513dc38",
          "payment_method": "EWALLET",
          "status": "SETTLED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 102500,
          "paid_amount": 102500,
          "paid_at": "2022-10-11T08:28:36.703Z",
          "description":
              "Verify account + activated wallet + api + free services galaxeus - biaya admin 2500",
          "expiry_date": "2022-10-12T08:18:52.811Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/634526ec25625f7d3ce06f2a",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2022-10-11T08:18:53.516Z",
          "updated": "2022-10-12T18:03:49.586Z",
          "currency": "IDR",
          "payment_channel": "DANA",
          "payment_id": "ewc_2bba51ad-0ee4-44ac-bede-9e1c7c58c36a",
          "payment_method_id": "pm-ef3a5842-c95a-47db-b142-f5aecdbc5c42",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        },
        {
          "id": "63426cbc5e4bd41a7209a562",
          "external_id": "verify:account:temp_id_1",
          "user_id": "610836e3824b6140a513dc38",
          "payment_method": "EWALLET",
          "status": "SETTLED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 102500,
          "paid_amount": 102500,
          "paid_at": "2022-10-09T06:40:23.568Z",
          "description":
              "Verify account + activated wallet + api + free services galaxeus - biaya admin 2500",
          "expiry_date": "2022-10-10T06:39:56.087Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/63426cbc5e4bd41a7209a562",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2022-10-09T06:39:56.854Z",
          "updated": "2022-10-10T18:01:18.208Z",
          "currency": "IDR",
          "payment_channel": "DANA",
          "payment_id": "ewc_f250bcd7-244e-4743-9ba1-8f99493ede70",
          "payment_method_id": "pm-3280250c-c2a8-4a6a-a8f5-82028b47ad1b",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        },
        {
          "id": "6342671d219583e0ccffbf95",
          "external_id": "verify:account:temp_id_8",
          "user_id": "610836e3824b6140a513dc38",
          "status": "EXPIRED",
          "merchant_name": "HEXAMINATE",
          "merchant_profile_picture_url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
          "amount": 102500,
          "description":
              "Verify account + activated wallet + api + free services galaxeus - biaya admin 2500",
          "expiry_date": "2022-10-10T06:15:58.017Z",
          "invoice_url":
              "https://checkout-staging.xendit.co/web/6342671d219583e0ccffbf95",
          "available_banks": [
            {
              "bank_code": "MANDIRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BRI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BNI",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "PERMATA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            },
            {
              "bank_code": "BCA",
              "collection_type": "POOL",
              "transfer_amount": 102500,
              "bank_branch": "Virtual Account",
              "account_holder_name": "HEXAMINATE",
              "identity_amount": 0
            }
          ],
          "available_retail_outlets": [
            {"retail_outlet_name": "ALFAMART"},
            {"retail_outlet_name": "INDOMARET"}
          ],
          "available_ewallets": [
            {"ewallet_type": "OVO"},
            {"ewallet_type": "DANA"},
            {"ewallet_type": "SHOPEEPAY"},
            {"ewallet_type": "LINKAJA"}
          ],
          "available_qr_codes": [
            {"qr_code_type": "QRIS"}
          ],
          "available_direct_debits": [],
          "available_paylaters": [],
          "should_exclude_credit_card": false,
          "should_send_email": false,
          "created": "2022-10-09T06:15:58.959Z",
          "updated": "2022-10-10T06:16:40.958Z",
          "currency": "IDR",
          "customer_notification_preference": {
            "invoice_created": [],
            "invoice_reminder": [],
            "invoice_expired": [],
            "invoice_paid": []
          }
        }
      ]
    };
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  List<ListAllInvoiceDatas> get datas {
    try {
      if (rawData["datas"] is List == false) {
        return [];
      }
      return (rawData["datas"] as List)
          .map((e) => ListAllInvoiceDatas(e as Map))
          .toList()
          .cast<ListAllInvoiceDatas>();
    } catch (e) {
      return [];
    }
  }

  static ListAllInvoice create({
    String? special_type,
    List<ListAllInvoiceDatas?>? datas,
  }) {
    Map jsonData = ListAllInvoice.defaultData;
    Map jsonCreate = {
      "@type": special_type,
      "datas": (datas != null)
          ? datas.map((res) => res!.toJson()).toList().cast<Map>()
          : null,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("ListAllInvoice ${e.toString()}, ${stack.toString()}");
      }
    });
    return ListAllInvoice(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ListAllInvoiceDatas {
  Map rawData;

  ListAllInvoiceDatas(this.rawData);

  static Map get defaultData {
    return {
      "id": "63de9f1099c9419bdf5266c7",
      "external_id": "asasmalsm",
      "user_id": "610836e3824b6140a513dc38",
      "status": "EXPIRED",
      "merchant_name": "HEXAMINATE",
      "merchant_profile_picture_url":
          "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png",
      "amount": 100000,
      "expiry_date": "2023-02-04T18:14:52.864Z",
      "invoice_url":
          "https://checkout-staging.xendit.co/web/63de9f1099c9419bdf5266c7",
      "available_banks": [
        {
          "bank_code": "MANDIRI",
          "collection_type": "POOL",
          "transfer_amount": 100000,
          "bank_branch": "Virtual Account",
          "account_holder_name": "HEXAMINATE",
          "identity_amount": 0
        },
        {
          "bank_code": "BRI",
          "collection_type": "POOL",
          "transfer_amount": 100000,
          "bank_branch": "Virtual Account",
          "account_holder_name": "HEXAMINATE",
          "identity_amount": 0
        },
        {
          "bank_code": "BNI",
          "collection_type": "POOL",
          "transfer_amount": 100000,
          "bank_branch": "Virtual Account",
          "account_holder_name": "HEXAMINATE",
          "identity_amount": 0
        },
        {
          "bank_code": "PERMATA",
          "collection_type": "POOL",
          "transfer_amount": 100000,
          "bank_branch": "Virtual Account",
          "account_holder_name": "HEXAMINATE",
          "identity_amount": 0
        },
        {
          "bank_code": "BCA",
          "collection_type": "POOL",
          "transfer_amount": 100000,
          "bank_branch": "Virtual Account",
          "account_holder_name": "HEXAMINATE",
          "identity_amount": 0
        }
      ],
      "available_retail_outlets": [
        {"retail_outlet_name": "ALFAMART"},
        {"retail_outlet_name": "INDOMARET"}
      ],
      "available_ewallets": [
        {"ewallet_type": "OVO"},
        {"ewallet_type": "DANA"},
        {"ewallet_type": "SHOPEEPAY"},
        {"ewallet_type": "LINKAJA"}
      ],
      "available_qr_codes": [
        {"qr_code_type": "QRIS"}
      ],
      "available_direct_debits": [],
      "available_paylaters": [],
      "should_exclude_credit_card": false,
      "should_send_email": false,
      "created": "2023-02-04T18:08:17.642Z",
      "updated": "2023-02-04T18:14:52.865Z",
      "currency": "IDR",
      "customer_notification_preference": {
        "invoice_created": [],
        "invoice_reminder": [],
        "invoice_expired": [],
        "invoice_paid": []
      }
    };
  }

  String? get id {
    try {
      if (rawData["id"] is String == false) {
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get external_id {
    try {
      if (rawData["external_id"] is String == false) {
        return null;
      }
      return rawData["external_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get user_id {
    try {
      if (rawData["user_id"] is String == false) {
        return null;
      }
      return rawData["user_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get status {
    try {
      if (rawData["status"] is String == false) {
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get merchant_name {
    try {
      if (rawData["merchant_name"] is String == false) {
        return null;
      }
      return rawData["merchant_name"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get merchant_profile_picture_url {
    try {
      if (rawData["merchant_profile_picture_url"] is String == false) {
        return null;
      }
      return rawData["merchant_profile_picture_url"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get amount {
    try {
      if (rawData["amount"] is int == false) {
        return null;
      }
      return rawData["amount"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get expiry_date {
    try {
      if (rawData["expiry_date"] is String == false) {
        return null;
      }
      return rawData["expiry_date"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get invoice_url {
    try {
      if (rawData["invoice_url"] is String == false) {
        return null;
      }
      return rawData["invoice_url"] as String;
    } catch (e) {
      return null;
    }
  }

  List<ListAllInvoiceDatasAvailableBanks> get available_banks {
    try {
      if (rawData["available_banks"] is List == false) {
        return [];
      }
      return (rawData["available_banks"] as List)
          .map((e) => ListAllInvoiceDatasAvailableBanks(e as Map))
          .toList()
          .cast<ListAllInvoiceDatasAvailableBanks>();
    } catch (e) {
      return [];
    }
  }

  List<ListAllInvoiceDatasAvailableRetailOutlets> get available_retail_outlets {
    try {
      if (rawData["available_retail_outlets"] is List == false) {
        return [];
      }
      return (rawData["available_retail_outlets"] as List)
          .map((e) => ListAllInvoiceDatasAvailableRetailOutlets(e as Map))
          .toList()
          .cast<ListAllInvoiceDatasAvailableRetailOutlets>();
    } catch (e) {
      return [];
    }
  }

  List<ListAllInvoiceDatasAvailableEwallets> get available_ewallets {
    try {
      if (rawData["available_ewallets"] is List == false) {
        return [];
      }
      return (rawData["available_ewallets"] as List)
          .map((e) => ListAllInvoiceDatasAvailableEwallets(e as Map))
          .toList()
          .cast<ListAllInvoiceDatasAvailableEwallets>();
    } catch (e) {
      return [];
    }
  }

  List<ListAllInvoiceDatasAvailableQrCodes> get available_qr_codes {
    try {
      if (rawData["available_qr_codes"] is List == false) {
        return [];
      }
      return (rawData["available_qr_codes"] as List)
          .map((e) => ListAllInvoiceDatasAvailableQrCodes(e as Map))
          .toList()
          .cast<ListAllInvoiceDatasAvailableQrCodes>();
    } catch (e) {
      return [];
    }
  }

  List<Object> get available_direct_debits {
    try {
      if (rawData["available_direct_debits"] is List == false) {
        return [];
      }
      return (rawData["available_direct_debits"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  List<Object> get available_paylaters {
    try {
      if (rawData["available_paylaters"] is List == false) {
        return [];
      }
      return (rawData["available_paylaters"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  bool? get should_exclude_credit_card {
    try {
      if (rawData["should_exclude_credit_card"] is bool == false) {
        return null;
      }
      return rawData["should_exclude_credit_card"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get should_send_email {
    try {
      if (rawData["should_send_email"] is bool == false) {
        return null;
      }
      return rawData["should_send_email"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get created {
    try {
      if (rawData["created"] is String == false) {
        return null;
      }
      return rawData["created"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get updated {
    try {
      if (rawData["updated"] is String == false) {
        return null;
      }
      return rawData["updated"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get currency {
    try {
      if (rawData["currency"] is String == false) {
        return null;
      }
      return rawData["currency"] as String;
    } catch (e) {
      return null;
    }
  }

  ListAllInvoiceDatasCustomerNotificationPreference
      get customer_notification_preference {
    try {
      if (rawData["customer_notification_preference"] is Map == false) {
        return ListAllInvoiceDatasCustomerNotificationPreference({});
      }
      return ListAllInvoiceDatasCustomerNotificationPreference(
          rawData["customer_notification_preference"] as Map);
    } catch (e) {
      return ListAllInvoiceDatasCustomerNotificationPreference({});
    }
  }

  static ListAllInvoiceDatas create({
    String? id,
    String? external_id,
    String? user_id,
    String? status,
    String? merchant_name,
    String? merchant_profile_picture_url,
    int? amount,
    String? expiry_date,
    String? invoice_url,
    List<ListAllInvoiceDatasAvailableBanks?>? available_banks,
    List<ListAllInvoiceDatasAvailableRetailOutlets?>? available_retail_outlets,
    List<ListAllInvoiceDatasAvailableEwallets?>? available_ewallets,
    List<ListAllInvoiceDatasAvailableQrCodes?>? available_qr_codes,
    List<Object?>? available_direct_debits,
    List<Object?>? available_paylaters,
    bool? should_exclude_credit_card,
    bool? should_send_email,
    String? created,
    String? updated,
    String? currency,
    ListAllInvoiceDatasCustomerNotificationPreference?
        customer_notification_preference,
  }) {
    Map jsonData = ListAllInvoiceDatas.defaultData;
    Map jsonCreate = {
      "id": id,
      "external_id": external_id,
      "user_id": user_id,
      "status": status,
      "merchant_name": merchant_name,
      "merchant_profile_picture_url": merchant_profile_picture_url,
      "amount": amount,
      "expiry_date": expiry_date,
      "invoice_url": invoice_url,
      "available_banks": (available_banks != null)
          ? available_banks.map((res) => res!.toJson()).toList().cast<Map>()
          : null,
      "available_retail_outlets": (available_retail_outlets != null)
          ? available_retail_outlets
              .map((res) => res!.toJson())
              .toList()
              .cast<Map>()
          : null,
      "available_ewallets": (available_ewallets != null)
          ? available_ewallets.map((res) => res!.toJson()).toList().cast<Map>()
          : null,
      "available_qr_codes": (available_qr_codes != null)
          ? available_qr_codes.map((res) => res!.toJson()).toList().cast<Map>()
          : null,
      "available_direct_debits": available_direct_debits,
      "available_paylaters": available_paylaters,
      "should_exclude_credit_card": should_exclude_credit_card,
      "should_send_email": should_send_email,
      "created": created,
      "updated": updated,
      "currency": currency,
      "customer_notification_preference":
          (customer_notification_preference != null)
              ? customer_notification_preference.toJson()
              : null,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("ListAllInvoiceDatas ${e.toString()}, ${stack.toString()}");
      }
    });
    return ListAllInvoiceDatas(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ListAllInvoiceDatasAvailableBanks {
  Map rawData;

  ListAllInvoiceDatasAvailableBanks(this.rawData);

  static Map get defaultData {
    return {
      "bank_code": "MANDIRI",
      "collection_type": "POOL",
      "transfer_amount": 100000,
      "bank_branch": "Virtual Account",
      "account_holder_name": "HEXAMINATE",
      "identity_amount": 0
    };
  }

  String? get bank_code {
    try {
      if (rawData["bank_code"] is String == false) {
        return null;
      }
      return rawData["bank_code"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get collection_type {
    try {
      if (rawData["collection_type"] is String == false) {
        return null;
      }
      return rawData["collection_type"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get transfer_amount {
    try {
      if (rawData["transfer_amount"] is int == false) {
        return null;
      }
      return rawData["transfer_amount"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get bank_branch {
    try {
      if (rawData["bank_branch"] is String == false) {
        return null;
      }
      return rawData["bank_branch"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get account_holder_name {
    try {
      if (rawData["account_holder_name"] is String == false) {
        return null;
      }
      return rawData["account_holder_name"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get identity_amount {
    try {
      if (rawData["identity_amount"] is int == false) {
        return null;
      }
      return rawData["identity_amount"] as int;
    } catch (e) {
      return null;
    }
  }

  static ListAllInvoiceDatasAvailableBanks create({
    String? bank_code,
    String? collection_type,
    int? transfer_amount,
    String? bank_branch,
    String? account_holder_name,
    int? identity_amount,
  }) {
    Map jsonData = ListAllInvoiceDatasAvailableBanks.defaultData;
    Map jsonCreate = {
      "bank_code": bank_code,
      "collection_type": collection_type,
      "transfer_amount": transfer_amount,
      "bank_branch": bank_branch,
      "account_holder_name": account_holder_name,
      "identity_amount": identity_amount,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print(
            "ListAllInvoiceDatasAvailableBanks ${e.toString()}, ${stack.toString()}");
      }
    });
    return ListAllInvoiceDatasAvailableBanks(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ListAllInvoiceDatasAvailableRetailOutlets {
  Map rawData;

  ListAllInvoiceDatasAvailableRetailOutlets(this.rawData);

  static Map get defaultData {
    return {"retail_outlet_name": "ALFAMART"};
  }

  String? get retail_outlet_name {
    try {
      if (rawData["retail_outlet_name"] is String == false) {
        return null;
      }
      return rawData["retail_outlet_name"] as String;
    } catch (e) {
      return null;
    }
  }

  static ListAllInvoiceDatasAvailableRetailOutlets create({
    String? retail_outlet_name,
  }) {
    Map jsonData = ListAllInvoiceDatasAvailableRetailOutlets.defaultData;
    Map jsonCreate = {
      "retail_outlet_name": retail_outlet_name,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print(
            "ListAllInvoiceDatasAvailableRetailOutlets ${e.toString()}, ${stack.toString()}");
      }
    });
    return ListAllInvoiceDatasAvailableRetailOutlets(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ListAllInvoiceDatasAvailableEwallets {
  Map rawData;

  ListAllInvoiceDatasAvailableEwallets(this.rawData);

  static Map get defaultData {
    return {"ewallet_type": "OVO"};
  }

  String? get ewallet_type {
    try {
      if (rawData["ewallet_type"] is String == false) {
        return null;
      }
      return rawData["ewallet_type"] as String;
    } catch (e) {
      return null;
    }
  }

  static ListAllInvoiceDatasAvailableEwallets create({
    String? ewallet_type,
  }) {
    Map jsonData = ListAllInvoiceDatasAvailableEwallets.defaultData;
    Map jsonCreate = {
      "ewallet_type": ewallet_type,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print(
            "ListAllInvoiceDatasAvailableEwallets ${e.toString()}, ${stack.toString()}");
      }
    });
    return ListAllInvoiceDatasAvailableEwallets(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ListAllInvoiceDatasAvailableQrCodes {
  Map rawData;

  ListAllInvoiceDatasAvailableQrCodes(this.rawData);

  static Map get defaultData {
    return {"qr_code_type": "QRIS"};
  }

  String? get qr_code_type {
    try {
      if (rawData["qr_code_type"] is String == false) {
        return null;
      }
      return rawData["qr_code_type"] as String;
    } catch (e) {
      return null;
    }
  }

  static ListAllInvoiceDatasAvailableQrCodes create({
    String? qr_code_type,
  }) {
    Map jsonData = ListAllInvoiceDatasAvailableQrCodes.defaultData;
    Map jsonCreate = {
      "qr_code_type": qr_code_type,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print(
            "ListAllInvoiceDatasAvailableQrCodes ${e.toString()}, ${stack.toString()}");
      }
    });
    return ListAllInvoiceDatasAvailableQrCodes(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ListAllInvoiceDatasCustomerNotificationPreference {
  Map rawData;

  ListAllInvoiceDatasCustomerNotificationPreference(this.rawData);

  static Map get defaultData {
    return {
      "invoice_created": [],
      "invoice_reminder": [],
      "invoice_expired": [],
      "invoice_paid": []
    };
  }

  List<Object> get invoice_created {
    try {
      if (rawData["invoice_created"] is List == false) {
        return [];
      }
      return (rawData["invoice_created"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  List<Object> get invoice_reminder {
    try {
      if (rawData["invoice_reminder"] is List == false) {
        return [];
      }
      return (rawData["invoice_reminder"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  List<Object> get invoice_expired {
    try {
      if (rawData["invoice_expired"] is List == false) {
        return [];
      }
      return (rawData["invoice_expired"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  List<Object> get invoice_paid {
    try {
      if (rawData["invoice_paid"] is List == false) {
        return [];
      }
      return (rawData["invoice_paid"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  static ListAllInvoiceDatasCustomerNotificationPreference create({
    List<Object?>? invoice_created,
    List<Object?>? invoice_reminder,
    List<Object?>? invoice_expired,
    List<Object?>? invoice_paid,
  }) {
    Map jsonData =
        ListAllInvoiceDatasCustomerNotificationPreference.defaultData;
    Map jsonCreate = {
      "invoice_created": invoice_created,
      "invoice_reminder": invoice_reminder,
      "invoice_expired": invoice_expired,
      "invoice_paid": invoice_paid,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print(
            "ListAllInvoiceDatasCustomerNotificationPreference ${e.toString()}, ${stack.toString()}");
      }
    });
    return ListAllInvoiceDatasCustomerNotificationPreference(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}
