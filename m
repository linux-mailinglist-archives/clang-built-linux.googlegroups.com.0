Return-Path: <clang-built-linux+bncBD6NJS73WYMRBC5ARSDAMGQENFTNAUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E953A3D10
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:26:06 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id m20-20020a0568301e74b02903e419b82f75sf1433128otr.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 00:26:06 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623396365; cv=pass;
        d=google.com; s=arc-20160816;
        b=xVfm2JHOWosLf8YMp5xbZvixLl+PH+9oKGXGeJzgEuflqY91enxm8yD/OosM/0EJVQ
         YLEtEqhFTAah2wtPrGZLnejlARiaeybr24e5hNH8V/uRstycpYuCZjkL+7Te8muCnc5K
         9vUKyVKFw28PUpAK6H1nDO3w0EcF+PtFkfFK8WZwbTe55pMtFiqA1X/Q2rh7hAM34sqI
         QsZxLIEZllqB0ndDfifvc5GZGbwGBBAGHHPyTWiYDHM+0Eb5yfJZwHENqJuJhsInoQth
         IzpEJsTLkOx1MnyZuQRbwC3QWcMrcyOOlZgjyXwaiF/X+KUinO4VBIicZ+7S8lnAItws
         18Cw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=JLK8ZhsQVcx02DW7p1HFeb6LV2OFhzdlKKPuE1JgxkY=;
        b=c3nzGNnVZwZywlzQMDdWlE+IGOzcqQyftSM8zhv2Vbx5Kilupohke25zJpHq6kdVXi
         eDO6vdnWJ0hhUHapq2bDs8Iz/V12Kfp9l58Gtg96NWZQlK1N6CQqzAL95PxTdaIcrIiq
         Onb7jtwUFUYNcqCKi3PV5s5xkNHabhhrzM6nv0AwrRCKTuOBFPyS1NMXLZGV0y92oZ5Q
         UtXag2vjsZjSCmiW8U2ftLLgsl62rCfNsOgYDg4T5xpaZtNpY1hoQOW3Y2cMT2DJYxMM
         LutzZgSEbhaNTpR/CT+8V3V8jKZuvnZ9O9uXlUpivi1OOS9X8KOhpdp9hrIqjhI069Ma
         zBDg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="K/UuE3oD";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=w+JYbjKn;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of haakon.bugge@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=haakon.bugge@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JLK8ZhsQVcx02DW7p1HFeb6LV2OFhzdlKKPuE1JgxkY=;
        b=HXhEllueBASnRSEDTKhYDgv1iueec+ZM1rt8whzaemQvT6jbTFVJTmxo/4QjdQtDwj
         ikgHBWILoJajoNpUO8mSPHHuSXILvTrhENcEyeYXrZbX6YKaYyIEy7Tefc7QhiryZAjN
         X2NIleQxe16OyWdpUDMujjJfZBOILeav3PkUVXzKWfuC9OB4zFtudoM2KkGDi5Z0ly+g
         CNs725gT+vu+LHYeg5OLLDc3yYJdUxPzWq2sNvbhhTZ9ERDQqVs1C0d7v0Rt70Wa0oIT
         VsYKl01VHhPZXVXLoNcOF/j7Z7jGpK3WfjfGMEcG4w7WsPvLgo4EiOboGeNBZdHtLeX7
         ovrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JLK8ZhsQVcx02DW7p1HFeb6LV2OFhzdlKKPuE1JgxkY=;
        b=XlXjBES0G/c28YOL32enpClauLnY8tWHgY234iTFzQXyrl9wCu8cpnISDQohzEtenU
         kzlzGNVvdU5J+oIxFExwK1Nazg27GCF16AF0SkmY/VoP4RkElAbBhQQlqtlI+O0MUtf/
         Ck8JE0BFRhPNECbm3qhK4a2VAZ3xHgb87fNdJW7g0rjJpAPG+9O7Tkh9rFRnUgk4vI+p
         8pscKS+0+3xRiaWnwknEr4YuYPFVB/TmS4/qgQkBQPfw+C+rV9LDC/5OdbQDb3csKdgf
         3gK49MP3Xb6H4MtS5v4jSvOOs6w2mkePVLt2vKtwn6NYSYlIP+slWZ9BwUtNnq4fvpHW
         BIhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MvT4VMPlSK+ldUYco/jRor9tgAlkqzju8BfvFTs61RMEsORtF
	mfcVKuyeDXnu7XIEpp+m254=
X-Google-Smtp-Source: ABdhPJzprWPBdPCTRbYZvYhb8GBCpjIeSBA0WK63PiTzkUwqPa27CawIzaOv4vJ+1SNMSeGMuNT+RA==
X-Received: by 2002:aca:d4cd:: with SMTP id l196mr12448713oig.58.1623396363740;
        Fri, 11 Jun 2021 00:26:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c290:: with SMTP id b16ls717492ooq.10.gmail; Fri, 11 Jun
 2021 00:26:03 -0700 (PDT)
X-Received: by 2002:a4a:d41a:: with SMTP id n26mr1963286oos.66.1623396363376;
        Fri, 11 Jun 2021 00:26:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623396363; cv=pass;
        d=google.com; s=arc-20160816;
        b=qgZ4GBn0U8YO4GF6DI7BIrBgo1kE4XAGGcp2eBvNxQULspYhhmwRDn4sTisF9cBsbG
         TPZzP7lx/ItyOEmkQNbh9NnIbtoVv31YeQIyzZNZocVx9ohIEj1NxDKzMvOdIbSnMIkO
         D/QDIcyy5Y/3HVDrdebgo/86GQ5uCxilHWCK4pyzx88sO8vdMfTLhUr17ObF2iE+s2GQ
         TRppNJ95cnzm2Aa0pYsTa05o0wUE/wAx5d5gCB8FA15aO3vn+NAKtC0a8W3OCRNe7WFM
         wZ9ZDFFH6bBvw1dV4z3SeYQuBByzAlzsDvAwZ5Z7544w5hwgKECf+DakwlXL0ZJq1E6+
         GJwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=CMkyUat4pUgpwaM+HKSRO5lXEWq0T10504FFytQlFiY=;
        b=fEB/rDM9Yt5qEAP32emvCI3BxPEZN5/ljrc6nZ9bnphjFouMYPLgqmW7igadSG4P6U
         nH/E22q3TAr524gDmjSs4wzF4F6lj3xjvw1zRW8OD2RTNp7E1Tm48GirECtj7v1rMcLh
         I/boCp86SAMEHoKRa+kxNOWOmDkjCLUP8eXAkWSXl2yaegazExHNVNSFsfZfSY2j5GA+
         lBin3SVkbb5dMyYKbTbEECQ0eDBQmjLWBsssql7+RrKPyn55CDunrYQlXpWjyrtM33Bg
         OnqVwd2S0cKEJE3gR0ovFFns6K3tK4Gn77OmtbCtHPcdE3Ql1hGUSq0yq8P6GVlX3+bb
         5y4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="K/UuE3oD";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=w+JYbjKn;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of haakon.bugge@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=haakon.bugge@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id w16si750430oov.0.2021.06.11.00.26.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 00:26:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of haakon.bugge@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15B7HtlE028892;
	Fri, 11 Jun 2021 07:25:52 GMT
Received: from oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 392ptc8wfv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Jun 2021 07:25:52 +0000
Received: from userp3030.oracle.com (userp3030.oracle.com [127.0.0.1])
	by pps.podrdrct (8.16.0.36/8.16.0.36) with SMTP id 15B7MLbO067034;
	Fri, 11 Jun 2021 07:25:51 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2106.outbound.protection.outlook.com [104.47.70.106])
	by userp3030.oracle.com with ESMTP id 38yxcxagyf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Jun 2021 07:25:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NGHldnMQKlhpdQE7Xwia7K3XKW3Zx88I/b7uoWKHOvFGHaQDk1Y5C152WXWSfAU3ttzhNSmCCK0sfCNJtXqSgKM1RuAVgGPwpfJH+d+UImrzWyywwOeAD47h5W1c42ufiVvPdew1+QBT+qphfpzMvyHNSOl5pnxn0CwnF7AyrPAylSUr3cWvl6v9HSBYJ08Gb6mRFCUFO/5S2J8s/ghyU30xur5iRSvM8hsvRv0UxwCdUTTTD+77+QscUm0nIRy42RPJmCdlJaBFht2ZJRLYakpJK5J2Tx08k7qdeEkQFTRNYIJMXphG0w0NxqiV6ZaEZmkZDb/pf6neFAIFg5RdJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CMkyUat4pUgpwaM+HKSRO5lXEWq0T10504FFytQlFiY=;
 b=elHpUHApWEefHA8KyVf4WkhKtSxHTaiVq55ekPN2YHV1Ed40Kcm++Icf4K1BFdNJOuMAZk4guzP2+CtnxTHo9qc4I1IwbN9eyN8PDHJKd9r9OBLCzubDKKdTB4uWgkb2M5Y98FZQAGYNCRhrgmhbNks8SYY0kSerIqgAuEhEhY4+MgNFwfiZXyiu1b5vAzIGjIBQTG8TUZc6BmXIyakcMw1W8cx3axKHyBxS4CmF+raPSqhLTTCNdL1mbBWrxqEA06wNvquOis7Z5mZ1Wf+Tnrl7Qb5RPf3AbxdcfIApjWviu2pY481YfN9SG1NKawq0CsaMOJWdG1gTHwnRUM8Pew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY4PR10MB1989.namprd10.prod.outlook.com (2603:10b6:903:11a::12)
 by CY4PR1001MB2405.namprd10.prod.outlook.com (2603:10b6:910:3f::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.26; Fri, 11 Jun
 2021 07:25:46 +0000
Received: from CY4PR10MB1989.namprd10.prod.outlook.com
 ([fe80::2cda:5611:238a:17a3]) by CY4PR10MB1989.namprd10.prod.outlook.com
 ([fe80::2cda:5611:238a:17a3%8]) with mapi id 15.20.4219.024; Fri, 11 Jun 2021
 07:25:46 +0000
From: Haakon Bugge <haakon.bugge@oracle.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: Greg KH <gregkh@linuxfoundation.org>, Leon Romanovsky <leon@kernel.org>,
        Doug Ledford <dledford@redhat.com>, Kees Cook <keescook@chromium.org>,
        Nathan
 Chancellor <nathan@kernel.org>,
        Adit Ranadive <aditr@vmware.com>, Ariel Elior
	<aelior@marvell.com>,
        Christian Benvenuti <benve@cisco.com>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
        Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
        Devesh Sharma
	<devesh.sharma@broadcom.com>,
        Gal Pressman <galpress@amazon.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        OFED mailing
 list <linux-rdma@vger.kernel.org>,
        Michal Kalderon <mkalderon@marvell.com>,
        Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
        Mustafa Ismail
	<mustafa.ismail@intel.com>,
        Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
        Nelson Escobar <neescoba@cisco.com>,
        Nick Desaulniers
	<ndesaulniers@google.com>,
        Potnuri Bharat Teja <bharat@chelsio.com>,
        Selvin
 Xavier <selvin.xavier@broadcom.com>,
        Shiraz Saleem <shiraz.saleem@intel.com>,
        VMware PV-Drivers <pv-drivers@vmware.com>,
        Yishai Hadas <yishaih@nvidia.com>, Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: Re: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on the
 ib_port_attribute intead of kobj's
Thread-Topic: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on
 the ib_port_attribute intead of kobj's
Thread-Index: AQHXW3XC7qLq8SZSTkiH41zCfEamxasIV9WAgAAefoCAAAclgIAAAusAgAXurYA=
Date: Fri, 11 Jun 2021 07:25:46 +0000
Message-ID: <8685A354-4D41-4805-BDC5-365216CEAF40@oracle.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com> <20210607121411.GC1002214@nvidia.com>
 <YL4TkfVlTellmnc+@kroah.com> <20210607125012.GE1002214@nvidia.com>
In-Reply-To: <20210607125012.GE1002214@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3654.100.0.2.22)
x-originating-ip: [51.175.204.144]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71585832-8e39-4945-2436-08d92caa2158
x-ms-traffictypediagnostic: CY4PR1001MB2405:
x-microsoft-antispam-prvs: <CY4PR1001MB240556C4F5746804A7BD7AD9FD349@CY4PR1001MB2405.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EBBoAygkmBQCTPetqGTNYwseM6C0a3QvQ9d0DnH2oAGmPNSZP+k7vVdbOhjD8fr3gSc9T8qiiyjN33w2StlOWJRtd5u56+gas1XBXKFgV24P+2yh36+83I8+M9NEhZLHMZnyc8j06/q1mh7z4go9e44PM4FHyIGuyUyyk37AqJBASK6228YNQZf6vwj6h9N/sVvUhULJyDjV7SJ6lS8lYUr+S335Y/BIvsFsmKagU5oXjmL87VyPA1CfnwEexF9jxe6AsVXUf/yayv+t0bp6BgylYlnxU1G4w12zvBfDJnixzcmJy3b/rfY6dIywDBg0vBkWPyX/53uzPYzPsooZZPrYTGmEQ3XZRumw6llvUwxtjCCCJjEXG/5F3XMBpUMP3tSku4rxDCKjFQkbeiuUnV0gfrWkHuR6PyPJxEtbygpVGDVRVdqvv1zFUb3O/bYi8mzMuFUlCL7oESJ/lIyKJT9AU9jRaD4jMalkGkL91Qjc/1WPO0rCyZ695IA0dTIOGlXkzUFXZZqiHOHJDYpiHlU/uqB0PwNc53oio9uMcsApZgN5QN3DV6i/Di4hjbjM1GDFbvcky5GihzruvhptzcIlElYGJwplKBA/YE/n0kPIFbF1XdjRgpx7urOB9KTBpgpT+cqoOzlfere3XhKZSg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR10MB1989.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(39860400002)(396003)(366004)(346002)(376002)(36756003)(26005)(186003)(8936002)(6486002)(44832011)(2616005)(76116006)(5660300002)(478600001)(6916009)(33656002)(83380400001)(66574015)(316002)(53546011)(6506007)(122000001)(2906002)(4326008)(54906003)(66946007)(64756008)(86362001)(38100700002)(8676002)(6512007)(66476007)(66556008)(71200400001)(91956017)(66446008)(7416002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WElpeWZCaHZPYU1FWHVpMGtsY203VTNKR3RQQWRaWUtSY2NXMWI4MlpWbzVi?=
 =?utf-8?B?VHN1TThOVkhuWEI2cHF3THc5dzYzUVpNS250d0htUnFDZDN2a09ZY0xzSjJw?=
 =?utf-8?B?ZmxkeFlLWFdod3dlTDBvSU1NWHpiRmpBR1AxdzYzdTJEUndiM3FpRkZVUGRH?=
 =?utf-8?B?eE5VQStCUlVwamJ1YWUzOHAvVVBOdW1rbVMwSUxpcTlPbXk2MXpQVmNDbXMw?=
 =?utf-8?B?Vjg2bStEOXFPZU51akl3SEZDUlNFSDlZT0hkeDdMdVB1TnM0MkNvMFc3WmRG?=
 =?utf-8?B?bEFmRnZVaTU0ck80U0FWQXhhZERoYWxPYTdpT1lCc3VLbHZJVnpSR1ZHMTBO?=
 =?utf-8?B?QzlNQmNCYjMzY0Z6cm5FQUN0UnJYWnpjanZRZXlqajJON0ZKalhhOUltekJM?=
 =?utf-8?B?N3pZQ3N4VU1mbGIxeXliV1lBY25rWG12VkNCQVU4eHhubG5aTHpZRi9NYUVv?=
 =?utf-8?B?YU9WaUJmNlU0dXVJd1ppNXptNlhGRXVqNTRKb2N4Z3RSS0U5QWZMWjVEZElw?=
 =?utf-8?B?aEI1c1NnSjhjWkQ5OTFNditLbCtxMUpXMytnOGxGR2k1VmU0bmRHd1RUVkxV?=
 =?utf-8?B?b3FVakpLZk1KckZWQXRlVi9TSHh6VW94WkRUR2tvcEIrd1JsL1FTZUlVcVFn?=
 =?utf-8?B?Z2RGaVBsdDJLWVowUk0rS1FaZzNRZDJqa2tjRG96R3NhVy9qQUkzZlJCd1Vl?=
 =?utf-8?B?WnJ2OVdLZlRUUEQrZGZpV01oUE5XVk5kVUV5R2txTlFOZ1A4VWl3N1FreHRl?=
 =?utf-8?B?NHZldlcvZzVlNVNrN3RkVzNwbDJad29XY1NjTHVnejE4ekZzTXlqZXRPMTNE?=
 =?utf-8?B?cnppUjRkd3ZZRlFuQ1FZSEp1ajYzYTF1TWhWWjNXRmgzai93UHc0K2l6Tkxz?=
 =?utf-8?B?YndndWdrTUxUZUxZS1BEVVZmM29td2s2cnR1N2QvcGllTWwxUEpkOFNwVzNv?=
 =?utf-8?B?Y2xUdEJLODlaYlpsaW1MYS9DaS90Qmc0cDNqQzlsbTRvclkzSUJxOEs2eEF4?=
 =?utf-8?B?WWRma1FlcXNEcjkwNENUVS8vZUViOVFXcmdYY1pwVVBJQWhxNXR6cUE5U3B0?=
 =?utf-8?B?a0JuN1JkdVIxV1VxKzBqOHVacGIyVEdzLzI0SUVPb1NVVEJtd2FNMkg1RU4y?=
 =?utf-8?B?Z0MrbDdGd21Wb1dOcURoZXQ3eTZiZysvaG81NnM2VzdSQ0VybDJQbGxla1kr?=
 =?utf-8?B?NGhLV1VUMFlDWkI1M1pkeDEyUmFsc2JwNS9KeFFmMGdxN3Jxay9RS0NrQzhn?=
 =?utf-8?B?TTlXcnlGTWhtckFzL2xBZW96Y3FjY1BXa2VaeFF5Uk9EbmZsQW9pMitESitM?=
 =?utf-8?B?MEl4TkJxTUNJWTdtREwxaEZaZmFNbDJ2c2VzM2czTXlzblZ3SE5rWjdNeFlJ?=
 =?utf-8?B?K2N6VFBWQ0RmQTRlclU2RTdGdEdaamNvV1g4MnVybVFYZHNLOUo1aDJldUxD?=
 =?utf-8?B?enMxZVlMK0h6a1ZMckkzZFBqUEt1aEZrVjAxdEpoV1c3VXEwL3dXZHNPeFhh?=
 =?utf-8?B?ZzIvL2dSaXRTUmFxUXlQNHI3MGk2Uk02cjhoMHZxTjIzMDVkc3hCRHZCSDZ2?=
 =?utf-8?B?aENKRXRxY1NGT2Y3cUZPYTk1QTRvb1NCVFdJaVhCYVhvbGVPSDRzTmd3Ujgx?=
 =?utf-8?B?WCtFbXU3SHZkYWpWaFdUL1lGN0lsYWM4MFRDdFpiZU1ITUYzdWx1c1p1VFRY?=
 =?utf-8?B?ZjdpR0pENmE4OVBmTmJuUG1MeTl4LzhrMWJRRjBHUTgwWHArWHZKZGxnaUZk?=
 =?utf-8?B?QVJpaG5HNmxudkZQSjIvNkFVS2RVc3I1ZWMrRHZtQU53ZXgrZWEzT1VNMkZW?=
 =?utf-8?B?YzR3UkxaaFBrV2g2YmZodz09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <0783AE6A5334944C8E5D957DFC4FACD3@namprd10.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR10MB1989.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71585832-8e39-4945-2436-08d92caa2158
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2021 07:25:46.3413
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tfejVyMqGX7je8vo8Ip+uEwl8d45xSsuS4Y/tvVzWep/vI1ShOmqSM8PiC5pRz+oDOULcAUhhQG7DFAPoz/zTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1001MB2405
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10011 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 mlxscore=0
 spamscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106110047
X-Proofpoint-ORIG-GUID: Lu35C3htlG_rft2Ajuu9p4bvTasC86xk
X-Proofpoint-GUID: Lu35C3htlG_rft2Ajuu9p4bvTasC86xk
X-Original-Sender: haakon.bugge@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="K/UuE3oD";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=w+JYbjKn;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of haakon.bugge@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=haakon.bugge@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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



> On 7 Jun 2021, at 14:50, Jason Gunthorpe <jgg@nvidia.com> wrote:
>=20
> On Mon, Jun 07, 2021 at 02:39:45PM +0200, Greg KH wrote:
>> On Mon, Jun 07, 2021 at 09:14:11AM -0300, Jason Gunthorpe wrote:
>>> On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
>>>> On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
>>>>> From: Jason Gunthorpe <jgg@nvidia.com>
>>>>>=20
>>>>> This code is trying to attach a list of counters grouped into 4 group=
s to
>>>>> the ib_port sysfs. Instead of creating a bunch of kobjects simply exp=
ress
>>>>> everything naturally as an ib_port_attribute and add a single
>>>>> attribute_groups list.
>>>>>=20
>>>>> Remove all the naked kobject manipulations.
>>>>=20
>>>> Much nicer.
>>>>=20
>>>> But why do you need your counters to be atomic in the first place?  Wh=
at
>>>> are they counting that requires this? =20
>>>=20
>>> The write side of the counter is being updated from concurrent kernel
>>> threads without locking, so this is an atomic because the write side
>>> needs atomic_add().
>>=20
>> So the atomic write forces a lock :(
>=20
> Of course, but a single atomic is cheaper than the double atomic in a
> full spinlock.
>=20
>>> Making them a naked u64 will cause significant corruption on the write
>>> side, and packet counters that are not accurate after quiescence are
>>> not very useful things.
>>=20
>> How "accurate" do these have to be?
>=20
> They have to be accurate. They are networking packet counters. What is
> the point of burning CPU cycles keeping track of inaccurate data?

Consider a CPU with a 32-bit wide datapath to memory, which reads and write=
s the most significant 4-byte word first:

    Memory                   CPU1                   CPU2
MSW         LSW        MSW         LSW        MSW         LSW
0x0  0xffffffff
0x0  0xffffffff        0x0
0x0  0xffffffff        0x0  0xffffffff
0x0  0xffffffff        0x1         0x0                         cpu1 has inc=
remented its register
0x1  0xffffffff        0x1         0x0                         cpu1 has wri=
tten msw
0x1  0xffffffff        0x1         0x0        0x1              cpu2 has rea=
d msw
0x1  0xffffffff        0x1         0x0        0x1  0xffffffff
0x1         0x0        0x1         0x0        0x2         0x0
0x2         0x0        0x1         0x0        0x2         0x0
0x2         0x0        0x1         0x0        0x2         0x0


I would say that 0x200000000 vs. 0x100000001 is more than inaccurate!


>=20
>> And have you all tried them?
>=20
> I've used them over the years. This stuff is something like 15 years
> old now.

We are using them.


Thxs, H=C3=A5kon

>> I'm pushing back here as I see a lot of atomics used for debugging
>> statistics for no good reason all over the place.  Especially when
>> userspace just does not care.
>=20
> If userspace doesn't care then just delete the counter entirely.
>=20
> Reporting a wrong/misleading debugging counter data sounds just
> horrible to me.
>=20
> What good is any debug result you get from the counter if it has to be
> questioned because the counter is allowed to be wrong?
>=20
> ""The sender says it sent 7 packets, but the receivers debug counter
> reports only 6! I guess my bug is a lost packet in the network.""
>=20
> Jason

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8685A354-4D41-4805-BDC5-365216CEAF40%40oracle.com.
