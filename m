Return-Path: <clang-built-linux+bncBAABBC675PYQKGQELF7XYDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C7415355A
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 17:38:37 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id c10sf1695784qtk.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 08:38:37 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1580920716; cv=pass;
        d=google.com; s=arc-20160816;
        b=cgMDVB4xjqWMIM+h/j+wjbjvEcWkiayD94bhSyzI3mP2Qcy1Hc9jhgFCLED6lc+MP2
         eEBRBE4skcnI6mNyZk6KdfSm6Qya74BqyvzKXBdE/nO0qmCPHr9W0O3SCwBdIBIFsJi/
         aej46hEhqj+Qtghx8EiekgzpADyHSuJvfmmwhVdmP5PIuKq+x9DnkqyCFbVQQB28BE/R
         gl0KWOpJK3A3oGjMHP/76L58vKRtrA9xvxIsBYvSUVzqEdFU1qBe+zpBqHDPzlOhfYFS
         6z1JYpvfFuuadvC7Fjt4QPx8RIPpeivuSWclKAgzXamryNH/O4LP1tywOwBzQzIlfIhj
         v6RQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=NfXgM9wv9ZdnqYok+QfLYev821ET2YxYG/R1tCU4ylE=;
        b=v5rdJhMg3JaD9eQX3cII+uhO007Rh1w894MgOobI5npmNeMLsHbjmqbraz4/MmlkeV
         iaW/rQPVEzeOvePHRLYFu2pTS1P/fUAZ9ZyyAAcapHu2J9UO6s1Ej913iAXsCapHQE0j
         eCeySP93n+HSNjm1uxIcwugY1f5XjZjWjWZaHWG5NS/pA91CtQRVXK/lYtM9B5/YP5iE
         Heg6LxJ6Afa8CHtY13cISwFdXfjYQDacWoJH0COWIi6ozJGvLeTf/Gr/d9j50PuSXPaP
         /65FpJw3+plHACpV6eUGAjOpfF/3YxGXmfnb2kaXgYdqccFn90ZXiyuAkx6Pk4oA3jiR
         hBug==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=kNUspe7N;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.223.81 is neither permitted nor denied by best guess record for domain of hawking.zhang@amd.com) smtp.mailfrom=Hawking.Zhang@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NfXgM9wv9ZdnqYok+QfLYev821ET2YxYG/R1tCU4ylE=;
        b=Y7fxpw8CH9G+Ibcz7oDtpzmKlhmmuedhfY0LMVZlSl0rgw+Ctk5CUomlRKvu4nOZum
         +AB+aWpHYml9dVEaaKbHGNH+pVXf07ssfx7JNiN8D1v7fCchzdIec///N3GjBxyuB0kJ
         kNuuYprjO69rWLZtWe4rEmfBNQEeKlUD0yiHTGtXVF+3yF/jcJ/Q2bu8iwlNDA7iIhyX
         DTQnZEWcF3lDnjxkvsYpHsPfE5QOTygD2t3oR7qiFg8biEOZq6g7olSJF8qFuyc5A/0q
         BM3Eegla9XpaJ9+s/OrS5C4S+8i/hIL/XjM/N3W5OvtUmyH/lcrdb0RePRG0fqaWsSBz
         ohGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NfXgM9wv9ZdnqYok+QfLYev821ET2YxYG/R1tCU4ylE=;
        b=XXY+H9XoYgrSGFHc8K1QVZ2Hwkf1n9DT8s3q07aM/YYxidfs96WZfDgC1zhD3cvhMB
         EW8sw247V3JUkg8Hai0flN6jvG7VB8SJTCOIjDEvSFG3EyiLpMH7Mez1S2OWvisM3UXS
         hZNAJklAEbMwMe7VPqWdHpyGnuj//8eSUkIq+ZAJrmAvvmrM4Cg0QDBF3GAc12gp7t/3
         3+Ryp93IGTQ1ZoAxSNewRlciPM/SKltSTv8QQl+mAaJiN1REN68cTb78FMy8WO5eQ0Dc
         ieAvBe2NQPBmq8nhqOe++fTzQLN+4Ou5Bj9oecRHyeR2a9NgKZwCMoAeGqip+CHA53F6
         S1NA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXX9YOBCx3gIQuGY3lJ1gLrQJRKUkxBd15JcnTFcdhPQCjWpxj6
	IEaZ+UWKr1s155TDBF3oWLc=
X-Google-Smtp-Source: APXvYqx7GCtR0FHSU6ICbWuXaATicOt00797l6UDSLjCQtdEcq4T7mqHaPniGLY6+AtjB0f4zyDMqQ==
X-Received: by 2002:a05:620a:143b:: with SMTP id k27mr32725706qkj.262.1580920715961;
        Wed, 05 Feb 2020 08:38:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ab0a:: with SMTP id u10ls1233138qke.6.gmail; Wed, 05 Feb
 2020 08:38:35 -0800 (PST)
X-Received: by 2002:a37:e208:: with SMTP id g8mr35643152qki.229.1580920715524;
        Wed, 05 Feb 2020 08:38:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580920715; cv=pass;
        d=google.com; s=arc-20160816;
        b=e1buqoCcjqUVWHKdsIUyNYrZnFVHv4xb8o29GLZIMM8DzSKLpRuOq8lfuvIxDWEpRK
         YLbAGOwtzcicSdgAgNjjQPl5RtsV4wr8A7xxr+YzYfTJeSnbZShIwzEF3x4SMvHa9Z8B
         BbjvAfvuRtgnqRl7NRICTmKc+XqRuQgHkL+theB0CNdDtv/fNq2iQlvCrytIxJLwpJ1v
         4XYPtx0tHneDGudjTTRrNzuwHP/n8yOpAYhy6zL2gQ4ecvx3K0Ep7bXTN+82Bg0mFsb7
         dKDtn793Blqweyq4wBb5O0etg6jPMUjbabyuf/8UJrZJFtsDJ/zVK055+yR4PixtPOje
         5vVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=4Gm9HOAisH26FSbLKbCMzRoC8cKfzW9ySRkinXadARs=;
        b=Dzew1Mufcqvzm5x5obJtXNgvYnkSPP9DcHQXvQQzISYvOGohg+KTwD6/vSumomejEa
         AwewuS+jJFWjlkbf6ikAMLAw/h+3Ji1ecZuAsMOyO6ww5/HwKP5cWsZYuHH+bGz0dwua
         ULi4u8xvNVzwd+g+679ilVaF4ywrgGk/fv7pGgUo8ff5UeFfKY0Rj49mFpWeGJKqlw9E
         UAbkDOpQp62qohjlR3AbARhRdX/yZs16mhDL9xRHGkr5DArINnUqSZFf0x98vO6N4ujn
         zJBFU3Z0kSFerPOrnJYlmOOXpLXXt9/y8iT4OU1RCPwUIC7j/8sNVyfszH3kc9Lvw/Ns
         LsGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=kNUspe7N;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.223.81 is neither permitted nor denied by best guess record for domain of hawking.zhang@amd.com) smtp.mailfrom=Hawking.Zhang@amd.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2081.outbound.protection.outlook.com. [40.107.223.81])
        by gmr-mx.google.com with ESMTPS id g2si8830qtv.3.2020.02.05.08.38.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Feb 2020 08:38:35 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.223.81 is neither permitted nor denied by best guess record for domain of hawking.zhang@amd.com) client-ip=40.107.223.81;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g0rIfWWIz7LmYI9IekmAVJVskfvdVzbUuzm24UtkBzIn3sxsMGQxJr6P3btSCyqm6c0Ca3nPSTNl86956oLDkVQfMbbq4UH9iMreDEP2wNNzUI9FUrVDqhnucNpudtJXABWr1oZwvjyfAvRshoQQs639Fb1GleVuYyopTyepNnw8yzrvX4/x30/DddQYXykAMFbt5ZN3p2VqAWixOCHoRS8IhRo6Mg09rkB7pkARfdC7/NeUYNlcz50LVzJua+IlwH6sbIr8amS/kxWNkelqaHCqmtWB1tdgTatiL2L++PyOJ7XWK6PItooj8gWqa7F58gEwudj6e5PyUAkHU7GAdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Gm9HOAisH26FSbLKbCMzRoC8cKfzW9ySRkinXadARs=;
 b=DIp2c/xX98f549AndCscEnGGRVR87x8lJXPjaF13w1RJ5ABksuVrsHwg/GjtWnEyrGuBW4n13eJNr08zs3oCAxabV95CcQxlSZ0I4fuyMSxm7qEhKJGUW3Yg0UvoOKFwmIM2aixyyasXi+Xh+JTgrSAj/bM746qTKXQQu6sgUwMY0QFdiA9sqec3xfDe/6/vlLejwe9lu00FhQhMC/qmjdWQN1xkLE++yN/kuNTyuCQ0WkuCHAvwrk4FEfuOtnTyON9gPbJZJxAb3KgO3Y+IQDYKmWEDNn1b03i55VFc3uocyNpEt/8PSwPKXxBSsjIgTzgod74LttnT4ylUxMt67Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1418.namprd12.prod.outlook.com (10.168.240.15) by
 DM5PR12MB1852.namprd12.prod.outlook.com (10.175.87.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Wed, 5 Feb 2020 16:38:33 +0000
Received: from DM5PR12MB1418.namprd12.prod.outlook.com
 ([fe80::c8ba:7e4e:e1c3:d8db]) by DM5PR12MB1418.namprd12.prod.outlook.com
 ([fe80::c8ba:7e4e:e1c3:d8db%5]) with mapi id 15.20.2707.020; Wed, 5 Feb 2020
 16:38:33 +0000
From: "Zhang, Hawking" <Hawking.Zhang@amd.com>
To: Nick Desaulniers <ndesaulniers@google.com>, CI Notify
	<ci_notify@linaro.org>
CC: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann
	<arnd@linaro.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: RE: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 56 - Successful!
Thread-Topic: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 56 - Successful!
Thread-Index: AQHV3DiB4cev23cokkiAEW514aoD0KgMzMbA
Date: Wed, 5 Feb 2020 16:38:33 +0000
Message-ID: <DM5PR12MB141846492D2B501976FC98D6FC020@DM5PR12MB1418.namprd12.prod.outlook.com>
References: <1589326257.1893.1580912447101.JavaMail.javamailuser@localhost>
 <CAKwvOdm=z+L07581+gbZ4PPt9Fn_MGJqGeeXTV1wrRz4hau_AA@mail.gmail.com>
In-Reply-To: <CAKwvOdm=z+L07581+gbZ4PPt9Fn_MGJqGeeXTV1wrRz4hau_AA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Enabled=true;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_SetDate=2020-02-05T16:38:23Z;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Method=Standard;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Name=Internal Use Only -
 Unrestricted;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_ActionId=78167a16-4346-4bd6-8b2a-0000ab0e0cc0;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_ContentBits=1
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled: true
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate: 2020-02-05T16:38:23Z
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method: Standard
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name: Internal Use Only -
 Unrestricted
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid: 3dd8961f-e488-4e60-8e11-a82d994e183d
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid: 2963315f-8181-44f6-af05-0000f5ea9871
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits: 0
x-originating-ip: [183.192.227.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 21acc8cf-cbce-46eb-9278-08d7aa59d744
x-ms-traffictypediagnostic: DM5PR12MB1852:
x-microsoft-antispam-prvs: <DM5PR12MB1852AB141C526D5906369659FC020@DM5PR12MB1852.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 0304E36CA3
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(199004)(189003)(9686003)(71200400001)(54906003)(7696005)(5660300002)(316002)(4326008)(55016002)(26005)(186003)(110136005)(81166006)(81156014)(8936002)(53546011)(966005)(33656002)(86362001)(8676002)(52536014)(6506007)(478600001)(66616009)(66946007)(66446008)(66476007)(64756008)(76116006)(2906002)(66556008);DIR:OUT;SFP:1101;SCL:1;SRVR:DM5PR12MB1852;H:DM5PR12MB1418.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +VzxpfIB88BcUUpJxt14rB0IqzFeDgG0+y7bxUfe8hs2JJ3VOeuIHdu+irM1bJkGxHBpxYmfwc1ao7jUzaYhIG3Ii+YkqbfZcp2PP19pTAqgZXj6hf6A8g4QF1kTn43VPQcTOTyEKMd59hGheCfJHQ7CgNYjK0Ubun8YMQafDfleNAxmEyl6hdsOPDosMX0+bJSCy56iB9YzTE6G3Emnxe3vZsif7yQesXpai5j5I0kqJ7a0yD3NEof9D1hqY3nojCSM/EJdrYpI3cFkt6Siba7mvUphN7/ay2Dgz9SV7m17W9m+bF7SXrH6OJ/+GVbrP8+gxnCfey6KhUn+YRUeEXmlcOxrFpFSvPJrJeN8KKA8iF5tszmF8OtzcaZm0qcOn2pZ9U4mEsIuSM3/m/U2X5UTBN7Q0c/fSkem3HFSbBGGVj+66qsv1JGH4lUMsIFQ7VX7sAd+LFB9YJWrg/wSPGTn3OjPWrjXHFSrxGWGqPE5IfLx79UgpKJcL9E9fc9L74lKOutgZo/QdlQteAs5eQ==
x-ms-exchange-antispam-messagedata: 5UbrCMBbgS0lm0Y7xeQcfGlW35Zeu3xt7tGcGckiE43by22M2wutQs83VguIEW7wBEOX4ml6MJLrvBuUUvXpb+I8Fv3enSaXUpn2ctldJe2EaxGATX8AL9/NX/Kv/ICcSLaawpgR7jBtp8D8c0G3bA==
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
	boundary="_004_DM5PR12MB141846492D2B501976FC98D6FC020DM5PR12MB1418namp_"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21acc8cf-cbce-46eb-9278-08d7aa59d744
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2020 16:38:33.2712
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tYA3NE2/D5hKrCoFKFOc/jLB+5+I3SngbQyGnkD7VpHcJZ65DrRfz+l3pDvjSTvcnsEthPqBwWcoRia1sGD9wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1852
X-Original-Sender: hawking.zhang@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=kNUspe7N;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.223.81 is neither permitted nor denied by best guess
 record for domain of hawking.zhang@amd.com) smtp.mailfrom=Hawking.Zhang@amd.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

--_004_DM5PR12MB141846492D2B501976FC98D6FC020DM5PR12MB1418namp_
Content-Type: multipart/alternative;
	boundary="_000_DM5PR12MB141846492D2B501976FC98D6FC020DM5PR12MB1418namp_"

--_000_DM5PR12MB141846492D2B501976FC98D6FC020DM5PR12MB1418namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[AMD Official Use Only - Internal Distribution Only]

Issue has already been fixed by the attached patch.

Regards,
Hawking

From: Nick Desaulniers <ndesaulniers@google.com>
Sent: Wednesday, February 5, 2020 23:25
To: CI Notify <ci_notify@linaro.org>; Zhang, Hawking <Hawking.Zhang@amd.com=
>
Cc: TCWG Validation <tcwg-validation@linaro.org>; Arnd Bergmann <arnd@linar=
o.org>; clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next=
-allmodconfig - Build # 56 - Successful!

+ Hawking


On Wed, Feb 5, 2020, 2:20 PM <ci_notify@linaro.org<mailto:ci_notify@linaro.=
org>> wrote:
Successfully identified regression in *linux* in CI configuration tcwg_kern=
el/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regress=
ed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig

Culprit:
<cut>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5
Author: Hawking Zhang <Hawking.Zhang@amd.com<mailto:Hawking.Zhang@amd.com>>

    drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device call
</cut>

First few errors in logs of first_bad:
00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:466:3: error: non-void fu=
nction 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:470:3: error: non-void fu=
nction 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:49 make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.o] Error 1
00:04:37 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
00:04:37 make[2]: *** [drivers/gpu/drm] Error 2
00:04:37 make[1]: *** [drivers/gpu] Error 2
00:04:47 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]=3D"https://github.com/llvm/llvm-project.git<https://nam11.safe=
links.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-=
project.git&data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb32943fef4ac=
08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63716513132709254=
7&sdata=3Da7wP10aPPrmAoOXglcpEJMU8ZXlyUIeNecweYWX0Eh4%3D&reserved=3D0>"
rr[linux_url]=3D"https://git.kernel.org/pub/scm/linux/kernel/git/next/linux=
-next.git<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fnext%2Flinux-next.gi=
t&data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1=
f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637165131327102545&sdata=3D=
ITh44bUgNZkh%2FhgcbE5H5DWw57ZPZTv3DjEwA88jopI%3D&reserved=3D0>"
rr[linux_branch]=3D"cee5a42837d4a6c4189f06f7bf355b97a24c3c93"

Results regressed to (for first_bad =3D=3D 2fe4750e8506da0f23ab80390b762b0d=
44a04fc5)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19713

from (for last_good =3D=3D 18348c5a4f2137db45a3348e59296b2f1d6aca5a)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26866
linux build successful:
all
linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-=
llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/build-2fe4750e=
8506da0f23ab80390b762b0d44a04fc5/<https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-re=
lease-aarch64-next-allmodconfig%2F56%2Fartifact%2Fartifacts%2Fbuild-2fe4750=
e8506da0f23ab80390b762b0d44a04fc5%2F&data=3D02%7C01%7CHawking.Zhang%40amd.c=
om%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C=
0%7C0%7C637165131327112540&sdata=3DA56Jf%2Bxxzp%2BwL6IP43XWbpOb9aS7NQVYADxR=
kHhUDvs%3D&reserved=3D0>
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-=
llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/build-18348c5a=
4f2137db45a3348e59296b2f1d6aca5a/<https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-re=
lease-aarch64-next-allmodconfig%2F56%2Fartifact%2Fartifacts%2Fbuild-18348c5=
a4f2137db45a3348e59296b2f1d6aca5a%2F&data=3D02%7C01%7CHawking.Zhang%40amd.c=
om%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C=
0%7C0%7C637165131327112540&sdata=3DXd3SlQzfOnUJFQ8tDvUYR%2Fmcfg8nDgXYImXslw=
DjGNU%3D&reserved=3D0>
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-rele=
ase-aarch64-next-allmodconfig/56/<https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-re=
lease-aarch64-next-allmodconfig%2F56%2F&data=3D02%7C01%7CHawking.Zhang%40am=
d.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d=
%7C0%7C0%7C637165131327122528&sdata=3DLEi3xhIiZMLwfckJUuItpWvyDHkohZvze6dGf=
H5Tk%2BA%3D&reserved=3D0>

Reproduce builds:
<cut>
mkdir investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5
cd investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5

git clone https://git.linaro.org/toolchain/jenkins-scripts<https://nam11.sa=
felinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.linaro.org%2Ftoolch=
ain%2Fjenkins-scripts&data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb3=
2943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6371651=
31327132530&sdata=3DbrEve4t5KbAS%2B4dbfmwvuYY28c5dxHflYUC1dz7fuvw%3D&reserv=
ed=3D0>

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcw=
g_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifact=
s/manifests/build-baseline.sh<https://nam11.safelinks.protection.outlook.co=
m/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-releas=
e-aarch64-next-allmodconfig%2F56%2Fartifact%2Fartifacts%2Fmanifests%2Fbuild=
-baseline.sh&data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb32943fef4a=
c08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6371651313271325=
30&sdata=3DIDzlRWSwrkO%2FiVR4avqM22cYNOzNMSxGskBzb0upW8M%3D&reserved=3D0>
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/t=
cwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifa=
cts/manifests/build-parameters.sh<https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-re=
lease-aarch64-next-allmodconfig%2F56%2Fartifact%2Fartifacts%2Fmanifests%2Fb=
uild-parameters.sh&data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb3294=
3fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6371651313=
27142523&sdata=3DtQYVqO2bNG%2F8bWwgTaInI5oN%2FKv%2FJ6CkNrUYvq2T9rc%3D&reser=
ved=3D0>
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm=
-release-aarch64-next-allmodconfig/56/artifact/artifacts/test.sh<https://na=
m11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fj=
ob%2Ftcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig%2F56%2Fartif=
act%2Fartifacts%2Ftest.sh&data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d7791=
4cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637=
165131327142523&sdata=3DbSrqxbJygerjeTn0ooXnRI9sSnw3xGDVggxZCJGDXfk%3D&rese=
rved=3D0>
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baselin=
e.sh

cd linux

# Reproduce first_bad build
git checkout --detach 2fe4750e8506da0f23ab80390b762b0d44a04fc5
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 18348c5a4f2137db45a3348e59296b2f1d6aca5a
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchai=
n/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kernel/llvm-release-a=
arch64-next-allmodconfig<https://nam11.safelinks.protection.outlook.com/?ur=
l=3Dhttps%3A%2F%2Fgit.linaro.org%2Ftoolchain%2Fci%2Fbase-artifacts.git%2Flo=
g%2F%3Fh%3Dlinaro-local%2Fci%2Ftcwg_kernel%2Fllvm-release-aarch64-next-allm=
odconfig&data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb32943fef4ac08d=
7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637165131327152518&s=
data=3D4qccBXYtqBU%2F7Q8RHGcevPo7ef9z2VLYQb0T72ggNz0%3D&reserved=3D0>

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch6=
4-next-allmodconfig/56/artifact/artifacts/<https://nam11.safelinks.protecti=
on.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisec=
t-llvm-release-aarch64-next-allmodconfig%2F56%2Fartifact%2Fartifacts%2F&dat=
a=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C=
3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637165131327152518&sdata=3D1zZRl=
eZquhmfUybIEWBvp%2FoimwzA5X3aF2n2UF0UkrQ%3D&reserved=3D0>
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch6=
4-next-allmodconfig/56/consoleText<https://nam11.safelinks.protection.outlo=
ok.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-r=
elease-aarch64-next-allmodconfig%2F56%2FconsoleText&data=3D02%7C01%7CHawkin=
g.Zhang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11=
a82d994e183d%7C0%7C0%7C637165131327162517&sdata=3DRyv4J91gBhIFzaG4s53sZuU1H=
vtdbldQLnRsYJBb40M%3D&reserved=3D0>

Full commit:
<cut>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5
Author: Hawking Zhang <Hawking.Zhang@amd.com<mailto:Hawking.Zhang@amd.com>>
Date:   Mon Dec 23 16:51:42 2019 +0800

    drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device call

    For sriov, psp ip block has to be initialized before
    ih block for the dynamic register programming interface
    that needed for vf ih ring buffer. On the other hand,
    current psp ip block hw_init function will initialize
    xgmi session which actaully depends on interrupt to
    return session context. This results an empty xgmi ta
    session id and later failures on all the xgmi ta cmd
    invoked from vf. xgmi ta session initialization has to
    be done after ih ip block hw_init call.

    to unify xgmi session init/fini for both bare-metal
    sriov virtualization use scenario, move xgmi ta init
    to xgmi_add_device call, and accordingly terminate xgmi
    ta session in xgmi_remove_device call.

    The existing suspend/resume sequence will not be changed.

    Signed-off-by: Hawking Zhang <Hawking.Zhang@amd.com<mailto:Hawking.Zhan=
g@amd.com>>
    Reviewed-by: Frank Min <Frank.Min@amd.com<mailto:Frank.Min@amd.com>>
    Signed-off-by: Alex Deucher <alexander.deucher@amd.com<mailto:alexander=
.deucher@amd.com>>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c  | 18 ++----------------
 drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h  |  2 ++
 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c | 11 ++++++++++-
 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h |  2 +-
 4 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c b/drivers/gpu/drm/amd/=
amdgpu/amdgpu_psp.c
index 3a1570dafe34..939a114605c0 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
@@ -558,7 +558,7 @@ int psp_xgmi_invoke(struct psp_context *psp, uint32_t t=
a_cmd_id)
        return psp_ta_invoke(psp, ta_cmd_id, psp->xgmi_context.session_id);
 }

-static int psp_xgmi_terminate(struct psp_context *psp)
+int psp_xgmi_terminate(struct psp_context *psp)
 {
        int ret;

@@ -579,7 +579,7 @@ static int psp_xgmi_terminate(struct psp_context *psp)
        return 0;
 }

-static int psp_xgmi_initialize(struct psp_context *psp)
+int psp_xgmi_initialize(struct psp_context *psp)
 {
        struct ta_xgmi_shared_memory *xgmi_cmd;
        int ret;
@@ -1420,16 +1420,6 @@ static int psp_load_fw(struct amdgpu_device *adev)
                return ret;
        }

-       if (adev->gmc.xgmi.num_physical_nodes > 1) {
-               ret =3D psp_xgmi_initialize(psp);
-               /* Warning the XGMI seesion initialize failure
-                * Instead of stop driver initialization
-                */
-               if (ret)
-                       dev_err(psp->adev->dev,
-                               "XGMI: Failed to initialize XGMI session\n"=
);
-       }
-
        if (psp->adev->psp.ta_fw) {
                ret =3D psp_ras_initialize(psp);
                if (ret)
@@ -1494,10 +1484,6 @@ static int psp_hw_fini(void *handle)
        void *tmr_buf;
        void **pptr;

-       if (adev->gmc.xgmi.num_physical_nodes > 1 &&
-           psp->xgmi_context.initialized =3D=3D 1)
-                psp_xgmi_terminate(psp);
-
        if (psp->adev->psp.ta_fw) {
                psp_ras_terminate(psp);
                psp_dtm_terminate(psp);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h b/drivers/gpu/drm/amd/=
amdgpu/amdgpu_psp.h
index 611021514c52..c77e1abb538a 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h
@@ -362,6 +362,8 @@ int psp_gpu_reset(struct amdgpu_device *adev);
 int psp_update_vcn_sram(struct amdgpu_device *adev, int inst_idx,
                        uint64_t cmd_gpu_addr, int cmd_size);

+int psp_xgmi_initialize(struct psp_context *psp);
+int psp_xgmi_terminate(struct psp_context *psp);
 int psp_xgmi_invoke(struct psp_context *psp, uint32_t ta_cmd_id);

 int psp_ras_invoke(struct psp_context *psp, uint32_t ta_cmd_id);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_xgmi.c
index a97af422575a..78989e9560d1 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
@@ -365,6 +365,13 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *adev)
                return 0;

        if (amdgpu_device_ip_get_ip_block(adev, AMD_IP_BLOCK_TYPE_PSP)) {
+               ret =3D psp_xgmi_initialize(&adev->psp);
+               if (ret) {
+                       dev_err(adev->dev,
+                               "XGMI: Failed to initialize xgmi session\n"=
);
+                       return ret;
+               }
+
                ret =3D psp_xgmi_get_hive_id(&adev->psp, &adev->gmc.xgmi.hi=
ve_id);
                if (ret) {
                        dev_err(adev->dev,
@@ -451,7 +458,7 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *adev)
        return ret;
 }

-void amdgpu_xgmi_remove_device(struct amdgpu_device *adev)
+int amdgpu_xgmi_remove_device(struct amdgpu_device *adev)
 {
        struct amdgpu_hive_info *hive;

@@ -471,6 +478,8 @@ void amdgpu_xgmi_remove_device(struct amdgpu_device *ad=
ev)
                amdgpu_xgmi_sysfs_rem_dev_info(adev, hive);
                mutex_unlock(&hive->hive_lock);
        }
+
+       return psp_xgmi_terminate(&adev->psp);
 }

 int amdgpu_xgmi_ras_late_init(struct amdgpu_device *adev)
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_xgmi.h
index 74011fbc2251..c62a4acf4c14 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h
@@ -40,7 +40,7 @@ struct amdgpu_hive_info {
 struct amdgpu_hive_info *amdgpu_get_xgmi_hive(struct amdgpu_device *adev, =
int lock);
 int amdgpu_xgmi_update_topology(struct amdgpu_hive_info *hive, struct amdg=
pu_device *adev);
 int amdgpu_xgmi_add_device(struct amdgpu_device *adev);
-void amdgpu_xgmi_remove_device(struct amdgpu_device *adev);
+int amdgpu_xgmi_remove_device(struct amdgpu_device *adev);
 int amdgpu_xgmi_set_pstate(struct amdgpu_device *adev, int pstate);
 int amdgpu_xgmi_get_hops_count(struct amdgpu_device *adev,
                struct amdgpu_device *peer_adev);
</cut>

--
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com<mailto:clang-built-l=
inux%2Bunsubscribe@googlegroups.com>.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1589326257.1893.1580912447101.JavaMail.javamailuser%40loc=
alhost<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2F=
groups.google.com%2Fd%2Fmsgid%2Fclang-built-linux%2F1589326257.1893.1580912=
447101.JavaMail.javamailuser%2540localhost&data=3D02%7C01%7CHawking.Zhang%4=
0amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e1=
83d%7C0%7C0%7C637165131327172512&sdata=3DSCgWVa5K3rb60SusSj%2BAmfQR1Q9Uyord=
mIaRfz%2FpXps%3D&reserved=3D0>.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DM5PR12MB141846492D2B501976FC98D6FC020%40DM5PR12MB1418.na=
mprd12.prod.outlook.com.

--_000_DM5PR12MB141846492D2B501976FC98D6FC020DM5PR12MB1418namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
p.msipheadera92e061b, li.msipheadera92e061b, div.msipheadera92e061b
	{mso-style-name:msipheadera92e061b;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"msipheadera92e061b" style=3D"margin:0in;margin-bottom:.0001pt">=
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;co=
lor:#0078D7">[AMD Official Use Only - Internal Distribution Only]</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue has already been fixed by the attached patch.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<br>
Hawking<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>From:</b> Nick Desaulniers &lt;ndesaulniers@googl=
e.com&gt; <br>
<b>Sent:</b> Wednesday, February 5, 2020 23:25<br>
<b>To:</b> CI Notify &lt;ci_notify@linaro.org&gt;; Zhang, Hawking &lt;Hawki=
ng.Zhang@amd.com&gt;<br>
<b>Cc:</b> TCWG Validation &lt;tcwg-validation@linaro.org&gt;; Arnd Bergman=
n &lt;arnd@linaro.org&gt;; clang-built-linux &lt;clang-built-linux@googlegr=
oups.com&gt;<br>
<b>Subject:</b> Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch=
64-next-allmodconfig - Build # 56 - Successful!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">&#43; Hawking<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, Feb 5, 2020, 2:20 PM &lt;<a href=3D"mailto:c=
i_notify@linaro.org">ci_notify@linaro.org</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<p class=3D"MsoNormal">Successfully identified regression in *linux* in CI =
configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.&nbsp; So =
far, this commit has regressed CI configurations:<br>
&nbsp;- tcwg_kernel/llvm-master-aarch64-next-allyesconfig<br>
&nbsp;- tcwg_kernel/llvm-release-aarch64-next-allmodconfig<br>
<br>
Culprit:<br>
&lt;cut&gt;<br>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
Author: Hawking Zhang &lt;<a href=3D"mailto:Hawking.Zhang@amd.com" target=
=3D"_blank">Hawking.Zhang@amd.com</a>&gt;<br>
<br>
&nbsp; &nbsp; drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device cal=
l<br>
&lt;/cut&gt;<br>
<br>
First few errors in logs of first_bad:<br>
00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:466:3: error: non-void fu=
nction 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]<br=
>
00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:470:3: error: non-void fu=
nction 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]<br=
>
00:02:49 make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.o] Error 1<br=
>
00:04:37 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2<br>
00:04:37 make[2]: *** [drivers/gpu/drm] Error 2<br>
00:04:37 make[1]: *** [drivers/gpu] Error 2<br>
00:04:47 make: *** [drivers] Error 2<br>
Configuration details:<br>
rr[llvm_url]=3D&quot;<a href=3D"https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project.git&amp;data=3D02=
%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd896=
1fe4884e608e11a82d994e183d%7C0%7C0%7C637165131327092547&amp;sdata=3Da7wP10a=
PPrmAoOXglcpEJMU8ZXlyUIeNecweYWX0Eh4%3D&amp;reserved=3D0" target=3D"_blank"=
>https://github.com/llvm/llvm-project.git</a>&quot;<br>
rr[linux_url]=3D&quot;<a href=3D"https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit=
%2Fnext%2Flinux-next.git&amp;data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d7=
7914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C=
637165131327102545&amp;sdata=3DITh44bUgNZkh%2FhgcbE5H5DWw57ZPZTv3DjEwA88jop=
I%3D&amp;reserved=3D0" target=3D"_blank">https://git.kernel.org/pub/scm/lin=
ux/kernel/git/next/linux-next.git</a>&quot;<br>
rr[linux_branch]=3D&quot;cee5a42837d4a6c4189f06f7bf355b97a24c3c93&quot;<br>
<br>
Results regressed to (for first_bad =3D=3D 2fe4750e8506da0f23ab80390b762b0d=
44a04fc5)<br>
reset_artifacts:<br>
-10<br>
build_llvm:<br>
-1<br>
linux_n_obj:<br>
19713<br>
<br>
from (for last_good =3D=3D 18348c5a4f2137db45a3348e59296b2f1d6aca5a)<br>
reset_artifacts:<br>
-10<br>
build_llvm:<br>
-1<br>
linux_n_obj:<br>
26866<br>
linux build successful:<br>
all<br>
linux boot successful:<br>
boot<br>
<br>
Artifacts of first_bad build: <a href=3D"https://nam11.safelinks.protection=
.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-=
llvm-release-aarch64-next-allmodconfig%2F56%2Fartifact%2Fartifacts%2Fbuild-=
2fe4750e8506da0f23ab80390b762b0d44a04fc5%2F&amp;data=3D02%7C01%7CHawking.Zh=
ang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d=
994e183d%7C0%7C0%7C637165131327112540&amp;sdata=3DA56Jf%2Bxxzp%2BwL6IP43XWb=
pOb9aS7NQVYADxRkHhUDvs%3D&amp;reserved=3D0" target=3D"_blank">
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allm=
odconfig/56/artifact/artifacts/build-2fe4750e8506da0f23ab80390b762b0d44a04f=
c5/</a><br>
Artifacts of last_good build: <a href=3D"https://nam11.safelinks.protection=
.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-=
llvm-release-aarch64-next-allmodconfig%2F56%2Fartifact%2Fartifacts%2Fbuild-=
18348c5a4f2137db45a3348e59296b2f1d6aca5a%2F&amp;data=3D02%7C01%7CHawking.Zh=
ang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d=
994e183d%7C0%7C0%7C637165131327112540&amp;sdata=3DXd3SlQzfOnUJFQ8tDvUYR%2Fm=
cfg8nDgXYImXslwDjGNU%3D&amp;reserved=3D0" target=3D"_blank">
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allm=
odconfig/56/artifact/artifacts/build-18348c5a4f2137db45a3348e59296b2f1d6aca=
5a/</a><br>
Build top page/logs: <a href=3D"https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-rele=
ase-aarch64-next-allmodconfig%2F56%2F&amp;data=3D02%7C01%7CHawking.Zhang%40=
amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e18=
3d%7C0%7C0%7C637165131327122528&amp;sdata=3DLEi3xhIiZMLwfckJUuItpWvyDHkohZv=
ze6dGfH5Tk%2BA%3D&amp;reserved=3D0" target=3D"_blank">
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allm=
odconfig/56/</a><br>
<br>
Reproduce builds:<br>
&lt;cut&gt;<br>
mkdir investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
cd investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
<br>
git clone <a href=3D"https://nam11.safelinks.protection.outlook.com/?url=3D=
https%3A%2F%2Fgit.linaro.org%2Ftoolchain%2Fjenkins-scripts&amp;data=3D02%7C=
01%7CHawking.Zhang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe=
4884e608e11a82d994e183d%7C0%7C0%7C637165131327132530&amp;sdata=3DbrEve4t5Kb=
AS%2B4dbfmwvuYY28c5dxHflYUC1dz7fuvw%3D&amp;reserved=3D0" target=3D"_blank">
https://git.linaro.org/toolchain/jenkins-scripts</a><br>
<br>
mkdir -p artifacts/manifests<br>
curl -o artifacts/manifests/build-baseline.sh <a href=3D"https://nam11.safe=
links.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcw=
g_kernel-bisect-llvm-release-aarch64-next-allmodconfig%2F56%2Fartifact%2Far=
tifacts%2Fmanifests%2Fbuild-baseline.sh&amp;data=3D02%7C01%7CHawking.Zhang%=
40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e=
183d%7C0%7C0%7C637165131327132530&amp;sdata=3DIDzlRWSwrkO%2FiVR4avqM22cYNOz=
NMSxGskBzb0upW8M%3D&amp;reserved=3D0" target=3D"_blank">
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allm=
odconfig/56/artifact/artifacts/manifests/build-baseline.sh</a><br>
curl -o artifacts/manifests/build-parameters.sh <a href=3D"https://nam11.sa=
felinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ft=
cwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig%2F56%2Fartifact%2F=
artifacts%2Fmanifests%2Fbuild-parameters.sh&amp;data=3D02%7C01%7CHawking.Zh=
ang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d=
994e183d%7C0%7C0%7C637165131327142523&amp;sdata=3DtQYVqO2bNG%2F8bWwgTaInI5o=
N%2FKv%2FJ6CkNrUYvq2T9rc%3D&amp;reserved=3D0" target=3D"_blank">
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allm=
odconfig/56/artifact/artifacts/manifests/build-parameters.sh</a><br>
curl -o artifacts/test.sh <a href=3D"https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm=
-release-aarch64-next-allmodconfig%2F56%2Fartifact%2Fartifacts%2Ftest.sh&am=
p;data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1=
f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637165131327142523&amp;sdat=
a=3DbSrqxbJygerjeTn0ooXnRI9sSnw3xGDVggxZCJGDXfk%3D&amp;reserved=3D0" target=
=3D"_blank">
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allm=
odconfig/56/artifact/artifacts/test.sh</a><br>
chmod &#43;x artifacts/test.sh<br>
<br>
# Reproduce the baseline build (build all pre-requisites)<br>
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baselin=
e.sh<br>
<br>
cd linux<br>
<br>
# Reproduce first_bad build<br>
git checkout --detach 2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
../artifacts/test.sh<br>
<br>
# Reproduce last_good build<br>
git checkout --detach 18348c5a4f2137db45a3348e59296b2f1d6aca5a<br>
../artifacts/test.sh<br>
<br>
cd ..<br>
&lt;/cut&gt;<br>
<br>
History of pending regressions and results: <a href=3D"https://nam11.safeli=
nks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.linaro.org%2Ftoolchain%=
2Fci%2Fbase-artifacts.git%2Flog%2F%3Fh%3Dlinaro-local%2Fci%2Ftcwg_kernel%2F=
llvm-release-aarch64-next-allmodconfig&amp;data=3D02%7C01%7CHawking.Zhang%4=
0amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e1=
83d%7C0%7C0%7C637165131327152518&amp;sdata=3D4qccBXYtqBU%2F7Q8RHGcevPo7ef9z=
2VLYQb0T72ggNz0%3D&amp;reserved=3D0" target=3D"_blank">
https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=3Dlinaro-loca=
l/ci/tcwg_kernel/llvm-release-aarch64-next-allmodconfig</a><br>
<br>
Artifacts: <a href=3D"https://nam11.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-release-aarc=
h64-next-allmodconfig%2F56%2Fartifact%2Fartifacts%2F&amp;data=3D02%7C01%7CH=
awking.Zhang%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e6=
08e11a82d994e183d%7C0%7C0%7C637165131327152518&amp;sdata=3D1zZRleZquhmfUybI=
EWBvp%2FoimwzA5X3aF2n2UF0UkrQ%3D&amp;reserved=3D0" target=3D"_blank">
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allm=
odconfig/56/artifact/artifacts/</a><br>
Build log: <a href=3D"https://nam11.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-release-aarc=
h64-next-allmodconfig%2F56%2FconsoleText&amp;data=3D02%7C01%7CHawking.Zhang=
%40amd.com%7C4d77914cb32943fef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994=
e183d%7C0%7C0%7C637165131327162517&amp;sdata=3DRyv4J91gBhIFzaG4s53sZuU1Hvtd=
bldQLnRsYJBb40M%3D&amp;reserved=3D0" target=3D"_blank">
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allm=
odconfig/56/consoleText</a><br>
<br>
Full commit:<br>
&lt;cut&gt;<br>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
Author: Hawking Zhang &lt;<a href=3D"mailto:Hawking.Zhang@amd.com" target=
=3D"_blank">Hawking.Zhang@amd.com</a>&gt;<br>
Date:&nbsp; &nbsp;Mon Dec 23 16:51:42 2019 &#43;0800<br>
<br>
&nbsp; &nbsp; drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device cal=
l<br>
<br>
&nbsp; &nbsp; For sriov, psp ip block has to be initialized before<br>
&nbsp; &nbsp; ih block for the dynamic register programming interface<br>
&nbsp; &nbsp; that needed for vf ih ring buffer. On the other hand,<br>
&nbsp; &nbsp; current psp ip block hw_init function will initialize<br>
&nbsp; &nbsp; xgmi session which actaully depends on interrupt to<br>
&nbsp; &nbsp; return session context. This results an empty xgmi ta<br>
&nbsp; &nbsp; session id and later failures on all the xgmi ta cmd<br>
&nbsp; &nbsp; invoked from vf. xgmi ta session initialization has to<br>
&nbsp; &nbsp; be done after ih ip block hw_init call.<br>
<br>
&nbsp; &nbsp; to unify xgmi session init/fini for both bare-metal<br>
&nbsp; &nbsp; sriov virtualization use scenario, move xgmi ta init<br>
&nbsp; &nbsp; to xgmi_add_device call, and accordingly terminate xgmi<br>
&nbsp; &nbsp; ta session in xgmi_remove_device call.<br>
<br>
&nbsp; &nbsp; The existing suspend/resume sequence will not be changed.<br>
<br>
&nbsp; &nbsp; Signed-off-by: Hawking Zhang &lt;<a href=3D"mailto:Hawking.Zh=
ang@amd.com" target=3D"_blank">Hawking.Zhang@amd.com</a>&gt;<br>
&nbsp; &nbsp; Reviewed-by: Frank Min &lt;<a href=3D"mailto:Frank.Min@amd.co=
m" target=3D"_blank">Frank.Min@amd.com</a>&gt;<br>
&nbsp; &nbsp; Signed-off-by: Alex Deucher &lt;<a href=3D"mailto:alexander.d=
eucher@amd.com" target=3D"_blank">alexander.deucher@amd.com</a>&gt;<br>
---<br>
&nbsp;drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c&nbsp; | 18 &#43;&#43;--------=
--------<br>
&nbsp;drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h&nbsp; |&nbsp; 2 &#43;&#43;<br=
>
&nbsp;drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c | 11 &#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;-<br>
&nbsp;drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h |&nbsp; 2 &#43;-<br>
&nbsp;4 files changed, 15 insertions(&#43;), 18 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c b/drivers/gpu/drm/amd/=
amdgpu/amdgpu_psp.c<br>
index 3a1570dafe34..939a114605c0 100644<br>
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c<br>
&#43;&#43;&#43; b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c<br>
@@ -558,7 &#43;558,7 @@ int psp_xgmi_invoke(struct psp_context *psp, uint32=
_t ta_cmd_id)<br>
&nbsp; &nbsp; &nbsp; &nbsp; return psp_ta_invoke(psp, ta_cmd_id, psp-&gt;xg=
mi_context.session_id);<br>
&nbsp;}<br>
<br>
-static int psp_xgmi_terminate(struct psp_context *psp)<br>
&#43;int psp_xgmi_terminate(struct psp_context *psp)<br>
&nbsp;{<br>
&nbsp; &nbsp; &nbsp; &nbsp; int ret;<br>
<br>
@@ -579,7 &#43;579,7 @@ static int psp_xgmi_terminate(struct psp_context *p=
sp)<br>
&nbsp; &nbsp; &nbsp; &nbsp; return 0;<br>
&nbsp;}<br>
<br>
-static int psp_xgmi_initialize(struct psp_context *psp)<br>
&#43;int psp_xgmi_initialize(struct psp_context *psp)<br>
&nbsp;{<br>
&nbsp; &nbsp; &nbsp; &nbsp; struct ta_xgmi_shared_memory *xgmi_cmd;<br>
&nbsp; &nbsp; &nbsp; &nbsp; int ret;<br>
@@ -1420,16 &#43;1420,6 @@ static int psp_load_fw(struct amdgpu_device *ade=
v)<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return ret;<br>
&nbsp; &nbsp; &nbsp; &nbsp; }<br>
<br>
-&nbsp; &nbsp; &nbsp; &nbsp;if (adev-&gt;gmc.xgmi.num_physical_nodes &gt; 1=
) {<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ret =3D psp_xgmi_in=
itialize(psp);<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Warning the XGMI=
 seesion initialize failure<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * Instead of stop =
driver initialization<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; */<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (ret)<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_err(psp-&gt;adev-&gt;dev,<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;XGMI: Failed to initialize XGMI =
session\n&quot;);<br>
-&nbsp; &nbsp; &nbsp; &nbsp;}<br>
-<br>
&nbsp; &nbsp; &nbsp; &nbsp; if (psp-&gt;adev-&gt;psp.ta_fw) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ret =3D psp_ras_ini=
tialize(psp);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (ret)<br>
@@ -1494,10 &#43;1484,6 @@ static int psp_hw_fini(void *handle)<br>
&nbsp; &nbsp; &nbsp; &nbsp; void *tmr_buf;<br>
&nbsp; &nbsp; &nbsp; &nbsp; void **pptr;<br>
<br>
-&nbsp; &nbsp; &nbsp; &nbsp;if (adev-&gt;gmc.xgmi.num_physical_nodes &gt; 1=
 &amp;&amp;<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;psp-&gt;xgmi_context.initialized =
=3D=3D 1)<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; psp_xgmi_terminate=
(psp);<br>
-<br>
&nbsp; &nbsp; &nbsp; &nbsp; if (psp-&gt;adev-&gt;psp.ta_fw) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; psp_ras_terminate(p=
sp);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; psp_dtm_terminate(p=
sp);<br>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h b/drivers/gpu/drm/amd/=
amdgpu/amdgpu_psp.h<br>
index 611021514c52..c77e1abb538a 100644<br>
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h<br>
&#43;&#43;&#43; b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h<br>
@@ -362,6 &#43;362,8 @@ int psp_gpu_reset(struct amdgpu_device *adev);<br>
&nbsp;int psp_update_vcn_sram(struct amdgpu_device *adev, int inst_idx,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; uint64_t cmd_gpu_addr, int cmd_size);<br>
<br>
&#43;int psp_xgmi_initialize(struct psp_context *psp);<br>
&#43;int psp_xgmi_terminate(struct psp_context *psp);<br>
&nbsp;int psp_xgmi_invoke(struct psp_context *psp, uint32_t ta_cmd_id);<br>
<br>
&nbsp;int psp_ras_invoke(struct psp_context *psp, uint32_t ta_cmd_id);<br>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_xgmi.c<br>
index a97af422575a..78989e9560d1 100644<br>
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c<br>
&#43;&#43;&#43; b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c<br>
@@ -365,6 &#43;365,13 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *a=
dev)<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return 0;<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; if (amdgpu_device_ip_get_ip_block(adev, AMD_IP_=
BLOCK_TYPE_PSP)) {<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ret =3D psp_xgm=
i_initialize(&amp;adev-&gt;psp);<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (ret) {<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;dev_err(adev-&gt;dev,<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;XGMI: Failed to initialize x=
gmi session\n&quot;);<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;return ret;<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}<br>
&#43;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ret =3D psp_xgmi_ge=
t_hive_id(&amp;adev-&gt;psp, &amp;adev-&gt;gmc.xgmi.hive_id);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (ret) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; dev_err(adev-&gt;dev,<br>
@@ -451,7 &#43;458,7 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *ad=
ev)<br>
&nbsp; &nbsp; &nbsp; &nbsp; return ret;<br>
&nbsp;}<br>
<br>
-void amdgpu_xgmi_remove_device(struct amdgpu_device *adev)<br>
&#43;int amdgpu_xgmi_remove_device(struct amdgpu_device *adev)<br>
&nbsp;{<br>
&nbsp; &nbsp; &nbsp; &nbsp; struct amdgpu_hive_info *hive;<br>
<br>
@@ -471,6 &#43;478,8 @@ void amdgpu_xgmi_remove_device(struct amdgpu_device=
 *adev)<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; amdgpu_xgmi_sysfs_r=
em_dev_info(adev, hive);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mutex_unlock(&amp;h=
ive-&gt;hive_lock);<br>
&nbsp; &nbsp; &nbsp; &nbsp; }<br>
&#43;<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp;return psp_xgmi_terminate(&amp;adev-&gt;psp=
);<br>
&nbsp;}<br>
<br>
&nbsp;int amdgpu_xgmi_ras_late_init(struct amdgpu_device *adev)<br>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_xgmi.h<br>
index 74011fbc2251..c62a4acf4c14 100644<br>
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h<br>
&#43;&#43;&#43; b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h<br>
@@ -40,7 &#43;40,7 @@ struct amdgpu_hive_info {<br>
&nbsp;struct amdgpu_hive_info *amdgpu_get_xgmi_hive(struct amdgpu_device *a=
dev, int lock);<br>
&nbsp;int amdgpu_xgmi_update_topology(struct amdgpu_hive_info *hive, struct=
 amdgpu_device *adev);<br>
&nbsp;int amdgpu_xgmi_add_device(struct amdgpu_device *adev);<br>
-void amdgpu_xgmi_remove_device(struct amdgpu_device *adev);<br>
&#43;int amdgpu_xgmi_remove_device(struct amdgpu_device *adev);<br>
&nbsp;int amdgpu_xgmi_set_pstate(struct amdgpu_device *adev, int pstate);<b=
r>
&nbsp;int amdgpu_xgmi_get_hops_count(struct amdgpu_device *adev,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; struct amdgpu_devic=
e *peer_adev);<br>
&lt;/cut&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to
<a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com" target=
=3D"_blank">
clang-built-linux&#43;unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://nam11.safelinks=
.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgroups.google.com%2Fd%2Fmsgid%=
2Fclang-built-linux%2F1589326257.1893.1580912447101.JavaMail.javamailuser%2=
540localhost&amp;data=3D02%7C01%7CHawking.Zhang%40amd.com%7C4d77914cb32943f=
ef4ac08d7aa4fa1f8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637165131327=
172512&amp;sdata=3DSCgWVa5K3rb60SusSj%2BAmfQR1Q9UyordmIaRfz%2FpXps%3D&amp;r=
eserved=3D0" target=3D"_blank">
https://groups.google.com/d/msgid/clang-built-linux/1589326257.1893.1580912=
447101.JavaMail.javamailuser%40localhost</a>.<o:p></o:p></p>
</blockquote>
</div>
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/DM5PR12MB141846492D2B501976FC98D6FC020%40DM5PR=
12MB1418.namprd12.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/DM5PR12MB141846492D2B50=
1976FC98D6FC020%40DM5PR12MB1418.namprd12.prod.outlook.com</a>.<br />

--_000_DM5PR12MB141846492D2B501976FC98D6FC020DM5PR12MB1418namp_--

--_004_DM5PR12MB141846492D2B501976FC98D6FC020DM5PR12MB1418namp_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Wed, 05 Feb 2020 16:38:25 GMT";
	modification-date="Wed, 05 Feb 2020 16:38:25 GMT"

Received: from MWHPR12MB1376.namprd12.prod.outlook.com (2603:10b6:3:16::16) by
 DM5PR12MB1418.namprd12.prod.outlook.com with HTTPS via
 DM5PR07CA0030.NAMPRD07.PROD.OUTLOOK.COM; Tue, 4 Feb 2020 14:49:20 +0000
Received: from BN4PR12CA0024.namprd12.prod.outlook.com (2603:10b6:403:2::34)
 by MWHPR12MB1376.namprd12.prod.outlook.com (2603:10b6:300:13::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.32; Tue, 4 Feb
 2020 14:49:13 +0000
Received: from CO1NAM11FT050.eop-nam11.prod.protection.outlook.com
 (2a01:111:f400:7eab::201) by BN4PR12CA0024.outlook.office365.com
 (2603:10b6:403:2::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21 via Frontend
 Transport; Tue, 4 Feb 2020 14:49:12 +0000
Received: from mail-wm1-f67.google.com (209.85.128.67) by
 CO1NAM11FT050.mail.protection.outlook.com (10.13.174.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.25 via Frontend Transport; Tue, 4 Feb 2020 14:49:12 +0000
Received: by mail-wm1-f67.google.com with SMTP id q9so3593368wmj.5;
        Tue, 04 Feb 2020 06:49:12 -0800 (PST)
Received: from brihaspati.fritz.box (p200300C58F31B30001132E829789D1A4.dip0.t-ipconnect.de. [2003:c5:8f31:b300:113:2e82:9789:d1a4])
        by smtp.gmail.com with ESMTPSA id c4sm4068213wml.7.2020.02.04.06.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2020 06:49:10 -0800 (PST)
From: Nirmoy Das <nirmoy.aiemd@gmail.com>
To: "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
CC: "Koenig, Christian" <Christian.Koenig@amd.com>, "Deucher, Alexander"
	<Alexander.Deucher@amd.com>, "Das, Nirmoy" <Nirmoy.Das@amd.com>, "Min, Frank"
	<Frank.Min@amd.com>, "Zhang, Hawking" <Hawking.Zhang@amd.com>
Subject: [PATCH] drm/amdgpu: fix empty return on non-void function
Thread-Topic: [PATCH] drm/amdgpu: fix empty return on non-void function
Thread-Index: AQHV22pIvexfGKXFGEGWpToOqSOXLQ==
Date: Tue, 4 Feb 2020 14:51:22 +0000
Message-ID: <20200204145122.46353-1-nirmoy.das@amd.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthSource: CO1NAM11FT050.eop-nam11.prod.protection.outlook.com
X-MS-Has-Attach: 
X-MS-Exchange-Organization-Network-Message-Id: a1f0a8f4-41c6-431a-2429-08d7a9816630
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
x-ms-exchange-organization-originalclientipaddress: 209.85.128.67
x-ms-exchange-organization-originalserveripaddress: 10.13.174.79
received-spf: Pass (protection.outlook.com: domain of gmail.com designates
 209.85.128.67 as permitted sender) receiver=protection.outlook.com;
 client-ip=209.85.128.67; helo=mail-wm1-f67.google.com;
x-ms-publictraffictype: Email
x-forefront-antispam-report: CIP:209.85.128.67;IPV:;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(4636009)(199004)(189003)(1096003)(8676002)(5660300002)(4744005)(246002)(76482006)(1076003)(7636002)(7596002)(426003)(34756004)(34206002)(2160300002)(4326008)(36756003)(86362001)(450100002)(26005)(356004)(73392003)(82202003)(9686003)(6666004)(336012);DIR:INB;SFP:;SCL:1;SRVR:MWHPR12MB1376;H:mail-wm1-f67.google.com;FPR:;SPF:Pass;LANG:en;PTR:mail-wm1-f67.google.com;A:1;MX:1;
X-Microsoft-Antispam-Mailbox-Delivery: ucf:1;jmr:0;ex:0;auth:0;dest:C;OFR:CustomRules;ENG:(20160514016)(750127)(520011016)(944506383)(944626516);
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?SWvACr77kQd/1//iWlUOwdCqY3WzEKaZZ7dKJrSbbW6Rd7kBzf4mmT2TA3?=
 =?iso-8859-1?Q?XRstgY6TzPMb5woE+Z0yFF3OHgpumS4Jkb7mfijTijq6N3b+3E+qmkzOA9?=
 =?iso-8859-1?Q?HVVgiUegjY6N5JbkHWaYNjx7Ht+VUXj3ZenuT0seYZ+73DURUCWcRu0JhS?=
 =?iso-8859-1?Q?a1pzZXYd/UHo9InE2HWo0uciXwgvjMb6OLferbgjKE/O0dCmhO5/wDpWxF?=
 =?iso-8859-1?Q?KF+yvU5/UKkAjzDS0wQZQPmsyCG+ZviecwNDEx0YR3IBu7fzse0hM6pZRx?=
 =?iso-8859-1?Q?ynCL3KkqL7SPzcLfE9dKUASdjdl1q57ED1RPOqprCc4fxKa9bAbmjRKnSD?=
 =?iso-8859-1?Q?aJoLrka+niqwoQWNfjltJ1c4WYW41U6HavvKPXkEP+J+WDlCtvp3wmbKEY?=
 =?iso-8859-1?Q?cN4JBzjHtQeWTQSJ0bcMw9xOm09e76yzpb8i8OcYos1zD0sqybdzIKsHKn?=
 =?iso-8859-1?Q?LiLLwe2o0yyawCjarFRx2Ym+qqSf+sxOhJsolfQ1rKKaJUEB0PRUzVAIlJ?=
 =?iso-8859-1?Q?3L1ObRHK8u1vH7zwZlrMnWskAt7iRo6MxD2F2rLhgw/jX1CT8VVedJazAz?=
 =?iso-8859-1?Q?8Mf0k5CMZTQnZv6v3YMuSBMa+jxS+TS3bGbvexRlZYlDy3My2qYMtNZG0s?=
 =?iso-8859-1?Q?XTjygd7gy6jGiZbntrJnm9tUjvLrlkuhuwtzUqa0wVXqXXxOc6yY/sM2nD?=
 =?iso-8859-1?Q?pMLmFRCb5kV6BrbKB81h5aEhBT53X47W+J+OkmBOzyhEiX9eM9q8nI4Nu3?=
 =?iso-8859-1?Q?lcnqpzJMMNEFd+lAnYGOn3lpRE7PIvy0Ghn21R9BXBgmekEIAiwG4CkxtK?=
 =?iso-8859-1?Q?Ni7wFEdvgL7yJhrx2/tbeXD6gdbx/zDcwSBMKKTUQO5qQdupUBRGO1MQ3k?=
 =?iso-8859-1?Q?F47Zw6shzJwmBDQWDflvUN/74qPAr+r9SHjcDwzxa9kJAdQWQpLQt5HV2C?=
 =?iso-8859-1?Q?y9o581pHn9JBQ76FO1/kimx8cmyYKdLbKMEjKP5l5UPKYDDCF1c/kYOanG?=
 =?iso-8859-1?Q?76vkxN4RFO5koG52qvAU7u3d5OVSwU2r2/LW/1uayaukyuFs9T5hJz/xuU?=
 =?iso-8859-1?Q?VrK1urWu2IrcTx1pRV+C2tPdUKGGLTSxIRD8tE0IRqeHMMUEZUfI6X6ZZW?=
 =?iso-8859-1?Q?OAM0TL4oH/crDKa1KFKG96ICkaWnaYZP4r3VZg7WPy9KuC+mUmQWNV0iig?=
 =?iso-8859-1?Q?TuY+I5H+mbg5hGWrrg458zHMl2dyVEnfgItjj36Yo9a5BljVx4S3Q41UV7?=
 =?iso-8859-1?Q?x/Rcc6qeYaYL2fS6pBUdiGmewmlm3UGHbtzOveFkK0GTAhQUt4voM5dSfE?=
 =?iso-8859-1?Q?hxYS?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

This fixes empty return on non-void function, amdgpu_xgmi_remove_device

Fixes: b80574252499e (drm/amdgpu: move xgmi init/fini to xgmi_add/remove_de=
vice call)

Signed-off-by: Nirmoy Das <nirmoy.das@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_xgmi.c
index 78989e9560d1..490f57d6704c 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
@@ -463,11 +463,11 @@ int amdgpu_xgmi_remove_device(struct amdgpu_device *a=
dev)
        struct amdgpu_hive_info *hive;

        if (!adev->gmc.xgmi.supported)
-               return;
+               return -EINVAL;

        hive =3D amdgpu_get_xgmi_hive(adev, 1);
        if (!hive)
-               return;
+               return -EINVAL;

        if (!(hive->number_devices--)) {
                amdgpu_xgmi_sysfs_destroy(adev, hive);
--
2.25.0


--_004_DM5PR12MB141846492D2B501976FC98D6FC020DM5PR12MB1418namp_--
