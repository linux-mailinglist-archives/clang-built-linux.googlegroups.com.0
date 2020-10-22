Return-Path: <clang-built-linux+bncBAABBMP7Y36AKGQEMG3WPTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B24A2963A1
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 19:21:54 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id e142sf1063334oob.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 10:21:54 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1603387313; cv=pass;
        d=google.com; s=arc-20160816;
        b=DmSrY8D+O0mn1EnrTZ6CJ7trJZ7F5WMmqbWypVZeiJ1laVz6cdex2VoC03/YSijGf3
         t0PkSC6VxAljo9TPLdvrk9Ajxfkoi2skSMVaIIRn42nSpLnYtZhvgrFvPGLQtjw2SX8C
         dl37QAsxuZ/tIM3/aEWy/NW6WBF10qZ5CFOKhO2B7ruGGoF2i+tzu6zP6miT3u9gszbr
         /6OcoxlL2+PV5cW5ZUKPQ39mHSg6rVpBHFcUPG0Gr7289Gg9SNpsJXJBgVTHPySeQNlC
         r3fhdFAJMW6QXHK1F8WBITpuupLfDaLNeqxWTQEAvBKMJBAAs8gCRqbWWAN5c/TxNU1B
         tUyA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=PfN4Ha7lc/yD1oxOh5LhzHjN3jQG738ODz+4X7aWnHg=;
        b=RDWYIwhjAxswnh06j5Pdx0vwg+yqWvxnFQN6O6t7lQxwIggIKw9foo1YY2gIRx3foQ
         sG4lAZ0vlQUikm7bz7HsQJFYBCOC3j+Rd2Y48SVFnN7Xy3bKL3gBcgiZe3te490d0tbY
         zqy0szKJpJeO4PIrtg2uMv4E7sNZmGqmRLsGvF/LSbT2Zu8hJmsXqxIBh/rRmbhrGNSb
         0Sif7Gh0SdphYGFI3y3coqEZLcldpnkh2lEEdqISLWfEjEBCWtsVWxmv2nZPqzJKSCZ8
         nlJHiEEypWlBNU2BOp+KwEiTkpRp56hg8MJRv132ksNXjonSfpG8YHv+agono5V57m6E
         7sIQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=PV+t4PUx;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.237.42 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PfN4Ha7lc/yD1oxOh5LhzHjN3jQG738ODz+4X7aWnHg=;
        b=QKMfH0I+LcBH/TesHmJcObYaBtELcFjlsvhTTwIGRysO/nXEbQsMuUDyQeQzJ1UxaS
         bCRQu0+/Xyj1iZ4p/qL9oqL02H6XTk8gNVsgfWOzFgR7CA7KTUY33CfpOIZ9PPSWE40E
         18rQre/CeB16QOC4Y/fy7jRbNiYPvT0uxFVBHSV8LjXQjgDSEb9PIKc5SL2LUMAoSAkB
         kq2/HQ+zVrHQBcHPucSjMz1e9I7B1QA6xNc22x66C9JGFzNO3IkQdag3BieXEdIlzXnc
         fWlhO/bmUdJl2r2M9qj1YQa1mqlKHvYvvzFY8NRlLdC5jV3gCEGxMN+d7x7ScWtFyz9W
         0vjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PfN4Ha7lc/yD1oxOh5LhzHjN3jQG738ODz+4X7aWnHg=;
        b=CYM2hLtVwuDcgX6m4TJm0v08umGAevKoFXRKD1IeNpmCy3GiTdvj6Sj4jvgrlf3N8J
         H4a9EUafMiGpzTziLjAtf4+iYNlk52b8z1Xu7Ou1raWtNorirdgg/WjabaYgDhB4pUwQ
         9H1mQlTsKddGxNNyn4rRR5R7P9oz0Yhcucbzb2oGqhxLbxDSZu6TMuSccVN/JqxmTUuL
         uSF7HrIf5dTm892ETT37j0d3WnKeEKs5TL00qbwgNhgbCpwj0oeMoKp7+xeZg7dAuWOD
         gp1QFXw8qdRH1ZofrxscVkQmbycT71bmIz4mtfoIvBz+/VWc5dMDvthPh2+a+u9iJSut
         uV3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338LJsNkf+M9oTyKAijYLgzACblKNYTgW2kiP7lvLngaMQQhRcR
	L/hxZA3v8JwSXjlJ0pJmHic=
X-Google-Smtp-Source: ABdhPJwBj4WSWCyCzn1XiZRE0u6wyNKkdU+bm86Un/Ex/efSXY1Gp34PK2so6x2PlR6CqISLlCpu5w==
X-Received: by 2002:aca:7210:: with SMTP id p16mr2358228oic.77.1603387313092;
        Thu, 22 Oct 2020 10:21:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:60a:: with SMTP id w10ls646037oti.0.gmail; Thu, 22
 Oct 2020 10:21:52 -0700 (PDT)
X-Received: by 2002:a9d:6419:: with SMTP id h25mr2671566otl.79.1603387312761;
        Thu, 22 Oct 2020 10:21:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603387312; cv=pass;
        d=google.com; s=arc-20160816;
        b=lsK2VoSUlIrO0QiybfVyzR6nUvHz4baPYRL/puVUcU7YBI7weWV4FNd5wtOEW9OAUW
         j3S5WjtpGcpRHS4qLjFaRilff5z/0QciMUcTbs6HTnGEdUQhQ4QJ/zPiPc8rzKCRY7r0
         6lytaB7RVWrnBx4UBt5X6oe1IEu2zur/g2FHIWgWpYvOi2jiGXAcJIXBylcU89eC7p+m
         F8PBbysb77v6E3xzWsa2zH73pLOXw1J0QVpLdKKlqaEQjhfA5zjgYmiYaBAnG/xxIujg
         oHeKHeMVxzWtMAKBe7/x/8HTJ6804fljJztkAI8Z7SVrzt71XdzUzIIbjlho7TBhXsDK
         yPcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=eVUqTGaf82w6wEcBBqM23GXlsujvR6sjurFENlWZVoQ=;
        b=kJQSx9V/St2l7eljmB0+3ZGZcyyq4mn5NWA3+V6he5N+ENlqnthuARcLMT7hzqJ0tv
         5trzqSgh3xfBaQ+uYUe/sKix+aOUykESq5lRVfeyFR57hveQw3egBhMxS1jLmI2aHD50
         be7GuSWD//zAuuBI+29I8OEw8myO81ujnEGjVvmmL6ZGnDN2QFRwySiyiR+1jbZRd02F
         1F6n6QLXvvkoFfNq1zUnAhCc3u5umzOxn4UuoT5Qy1G43HVs740NCFUcDjCXlguGMa+C
         vzBq6rE1WVOR6EgWT3axZcPEQUG64NGb9YMLsGid7tvHz1q0sggOouOx+eJ5Syh88Lbq
         My0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=PV+t4PUx;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of gopakumarr@vmware.com designates 40.107.237.42 as permitted sender) smtp.mailfrom=gopakumarr@vmware.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vmware.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2042.outbound.protection.outlook.com. [40.107.237.42])
        by gmr-mx.google.com with ESMTPS id r6si359390oth.4.2020.10.22.10.21.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 10:21:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gopakumarr@vmware.com designates 40.107.237.42 as permitted sender) client-ip=40.107.237.42;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PEnhkwDHvTCOO0gssbNOl2RdsJmQbiP9UhxnqACHQXWqnp+nihAWM1ZTRd6BwAlEVG08UgqybKa9GgLTAr0I1TElIt45VSmdSPYLwDpingPTTocCVw2LPNjWPEdchVHP/aZRN6FlZyDQjxuPfOveyzRTnUfGLhA0ZjndnQhDQrEnQH5kacXxTepXb9NwMghCCMlbceiejuP3TEHaKsJ3MB1NyLNScG1ScvAhoiacPuxyfhsPJ/oBLiLu5/o5NRwJZXuVr5fuv2LSJe2wmL+ca05Uv/rlqFul3yEQFBxsjkBp3TFnIx9N182+K1bxsNpNJdTnYVVi4lB9WnfY2YV2Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eVUqTGaf82w6wEcBBqM23GXlsujvR6sjurFENlWZVoQ=;
 b=dN0RM2kOxL/y2A6suOThxKF+0Fk4NTBV2s+g4Io8SWUbEeqZ3RDi/5OPYMtG9mYhZZf1P/He6TmfGx6XHkw2AeRjQbCiAAEm2e2EJE6R9S46qwyGEKCK9R6PpqUQuu4iAm7D+uamAagSSXYL/uNEC1tTz41JPDm2of2iVwp3EPcubfSucMhWADz6vd2k+86I6IqxR+1STGXV625pCJ0Uw2q6HpMefPK13Z0UONwpulcJNeKLiV7EObytsJTU53Ot80GuuqdPAseM4Zy+QbrpZBcSDrQ7xk0OdMh6Wk7Yi0nmJEuqcQkPyTGRsGCQskr6e6lDYscdEt6gRTZeif8I2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
Received: from DM6PR05MB5292.namprd05.prod.outlook.com (2603:10b6:5:5a::30) by
 DM6PR05MB3993.namprd05.prod.outlook.com (2603:10b6:5:82::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.4; Thu, 22 Oct 2020 17:21:50 +0000
Received: from DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146]) by DM6PR05MB5292.namprd05.prod.outlook.com
 ([fe80::fc60:3dd5:354e:e146%7]) with mapi id 15.20.3499.018; Thu, 22 Oct 2020
 17:21:50 +0000
From: Rahul Gopakumar <gopakumarr@vmware.com>
To: "bhe@redhat.com" <bhe@redhat.com>
CC: "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "akpm@linux-foundation.org"
	<akpm@linux-foundation.org>, "natechancellor@gmail.com"
	<natechancellor@gmail.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "rostedt@goodmis.org"
	<rostedt@goodmis.org>, Rajender M <manir@vmware.com>, Yiu Cho Lau
	<lauyiuch@vmware.com>, Peter Jonasson <pjonasson@vmware.com>, Venkatesh
 Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Thread-Topic: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Thread-Index: AQHWnjk5ihPzOwsVE02I7/jG5KTBz6mQW+kAgAPEkzyAAWl/gIALAETTgAAhwwCAAAD7T4ACZ34AgADZzMg=
Date: Thu, 22 Oct 2020 17:21:50 +0000
Message-ID: <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201010061124.GE25604@MiWiFi-R3L-srv>
 <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201020151814.GU25604@MiWiFi-R3L-srv>
 <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>,<20201022040440.GX25604@MiWiFi-R3L-srv>
In-Reply-To: <20201022040440.GX25604@MiWiFi-R3L-srv>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [103.224.33.65]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e2cabee-c592-43ec-038a-08d876aef697
x-ms-traffictypediagnostic: DM6PR05MB3993:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR05MB39934650E316FC2549BE393AA41D0@DM6PR05MB3993.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KWy9hAPrgWe4Kfl0K5yRqsWPY/qWSxlu1k3UNTTWTwM6XDjM7iulsfrPDc7Hp6HxgoFzDwvrdMhYwK84TSatfZo+TUMVm1pyMiGPv4b9uBjmeZZKyg+MAYRy8e2stOz5dmchCRy94U5OiYWevYabeh/RN2W3t62/H63e295d+BJDy1BmAi2LF/zrTC68nVcxJpcglcpX5WWMnleKWr7gRY9UaoXtCSnBMZaizJHvljha6w/15X1PdvZCfwdPqjktHPt8QqHorzHx3PDA+P7ZNEOPPY82UrLg5sej5nuEsaUuWQYTUF6gRgBkWSOArSxFExTbzg1iDId5IZu+OGgi/Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR05MB5292.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(346002)(136003)(39860400002)(396003)(186003)(76116006)(53546011)(55016002)(2906002)(6506007)(54906003)(26005)(478600001)(33656002)(8676002)(66476007)(66556008)(71200400001)(9686003)(64756008)(66946007)(91956017)(66446008)(316002)(4326008)(83380400001)(86362001)(7696005)(8936002)(5660300002)(6916009)(107886003)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: YmioyMP07Jm/YoBFn4vf4wcUZT2m5ywzCzOXuAepkowZ/oF35q6s85ArtWXe0DW/uNQVTr1uABVLcxM2zaHN9y9JfT/m2LqcErv1atN3j1z0r9h5Ypf+RoKe2MVvpB/Wc23Wva+r5oxyitFFEuVmKCK1W6fEXSZ8iElU7EYdbaZSnjyC4edOdk66qoPdepaOeTKMHHPGetNhh60VR63p6O9v/fc7bk2iaRGKgnd4OtpEaQ3a8dIcfI51+LwCH+7s2JI/QJwxRVIb+fjm6szMsFPdf9ZS2SRQXtP6FBoAPipK+mv0clLiw96h4Zk4IQTQcu3w2kTZ6Zgwnb8lCeKQ03rt/Se7BxkzFtFsg4pwW/o3udJ/0Vwzf8XaDz6muPDM1/mXYl4OsqZ1MEABplYVkHhXN1Uf+IWXv/zZHXTlzI6HotvkaCV++hqjvtp10mGev7ChDiJvIk5oHzeGoyyP9yb5U+ZHEY7VDBDbk6ovGlR1Z7rmwXJkrbj+9NRR/WCn0o02iIuQEwhuWTE1PGHJ0DncMlhgYcZwqyCsAw8WRuMz7cob25K7VctMYJWFKQKfHnnSGNtsPRD8sKt4N5m2FYISZZVvP3CZ2rEX/5kv1+QoLEgONBYEmrfWLskXoztQJojzzsm62bVo7w9mwQP8+g==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR05MB5292.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e2cabee-c592-43ec-038a-08d876aef697
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2020 17:21:50.3905
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c98Jas/cy4TxSlPYLhEC7qjMs4VC93q6/XgipSoQ/atEvqNp/WHB/YEBkjQysmIETEgA65QPISTHGO8Poc0yFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR05MB3993
X-Original-Sender: gopakumarr@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vmware.com header.s=selector2 header.b=PV+t4PUx;       arc=pass
 (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass
 fromdomain=vmware.com);       spf=pass (google.com: domain of
 gopakumarr@vmware.com designates 40.107.237.42 as permitted sender)
 smtp.mailfrom=gopakumarr@vmware.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=vmware.com
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

Hi=C2=A0Baoquan,

>>=C2=A0Can you tell how you measure the boot time?=C2=A0

Our test is actually boothalt, time reported by this test
includes both boot-up and shutdown time.

>> At above, you said "Patch on latest commit - 20.161 secs",
>> could you tell where this 20.161 secs comes from,

So this time is boot-up time + shutdown time.

From the dmesg.log it looks like during the memmap_init
it's taking less time in the patch. Let me take a closer look to
confirm this and also to find where the 1-sec delay in the patch
run is coming from.


From: bhe@redhat.com <bhe@redhat.com>
Sent: 22 October 2020 9:34 AM
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: linux-mm@kvack.org <linux-mm@kvack.org>; linux-kernel@vger.kernel.org <=
linux-kernel@vger.kernel.org>; akpm@linux-foundation.org <akpm@linux-founda=
tion.org>; natechancellor@gmail.com <natechancellor@gmail.com>; ndesaulnier=
s@google.com <ndesaulniers@google.com>; clang-built-linux@googlegroups.com =
<clang-built-linux@googlegroups.com>; rostedt@goodmis.org <rostedt@goodmis.=
org>; Rajender M <manir@vmware.com>; Yiu Cho Lau <lauyiuch@vmware.com>; Pet=
er Jonasson <pjonasson@vmware.com>; Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kern=
el=20
=C2=A0
Hi Rahul,

On 10/20/20 at 03:26pm, Rahul Gopakumar wrote:
> >> Here, do you mean it even cost more time with the patch applied?
>=20
> Yes, we ran it multiple times and it looks like there is a=20
> very minor increase with the patch.
>=20
......=C2=A0
> On 10/20/20 at 01:45pm, Rahul Gopakumar wrote:
> > Hi Baoquan,
> >=20
> > We had some trouble applying the patch to problem commit and the latest=
 upstream commit. Steven (CC'ed) helped us by providing the updated draft p=
atch. We applied it on the latest commit (3e4fb4346c781068610d03c12b16c0cfb=
0fd24a3), and it doesn't look like improving the performance numbers.
>=20
> Thanks for your feedback. From the code, I am sure what the problem is,
> but I didn't test it on system with huge memory. Forget mentioning my
> draft patch is based on akpm/master branch since it's a mm issue, it
> might be a little different with linus's mainline kernel, sorry for the
> inconvenience.
>=20
> I will test and debug this on a server with 4T memory in our lab, and
> update if any progress.
>=20
> >=20
> > Patch on latest commit - 20.161 secs
> > Vanilla latest commit - 19.50 secs
>=20

Can you tell how you measure the boot time? I checked the boot logs you
attached, E.g in below two logs, I saw patch_dmesg.log even has less
time during memmap init. Now I have got a machine with 1T memory for
testing, but didn't see obvious time cost increase. At above, you said
"Patch on latest commit - 20.161 secs", could you tell where this 20.161
secs comes from, so that I can investigate and reproduce on my system?

patch_dmesg.log:
[=C2=A0=C2=A0=C2=A0 0.023126] Initmem setup node 1 [mem 0x0000005600000000-=
0x000000aaffffffff]
[=C2=A0=C2=A0=C2=A0 0.023128] On node 1 totalpages: 89128960
[=C2=A0=C2=A0=C2=A0 0.023129]=C2=A0=C2=A0 Normal zone: 1392640 pages used f=
or memmap
[=C2=A0=C2=A0=C2=A0 0.023130]=C2=A0=C2=A0 Normal zone: 89128960 pages, LIFO=
 batch:63
[=C2=A0=C2=A0=C2=A0 0.023893] Initmem setup node 2 [mem 0x000000ab00000000-=
0x000001033fffffff]
[=C2=A0=C2=A0=C2=A0 0.023895] On node 2 totalpages: 89391104
[=C2=A0=C2=A0=C2=A0 0.023896]=C2=A0=C2=A0 Normal zone: 1445888 pages used f=
or memmap
[=C2=A0=C2=A0=C2=A0 0.023897]=C2=A0=C2=A0 Normal zone: 89391104 pages, LIFO=
 batch:63
[=C2=A0=C2=A0=C2=A0 0.026744] ACPI: PM-Timer IO Port: 0x448
[=C2=A0=C2=A0=C2=A0 0.026747] ACPI: Local APIC address 0xfee00000

vanilla_dmesg.log:
[=C2=A0=C2=A0=C2=A0 0.024295] Initmem setup node 1 [mem 0x0000005600000000-=
0x000000aaffffffff]
[=C2=A0=C2=A0=C2=A0 0.024298] On node 1 totalpages: 89128960
[=C2=A0=C2=A0=C2=A0 0.024299]=C2=A0=C2=A0 Normal zone: 1392640 pages used f=
or memmap
[=C2=A0=C2=A0=C2=A0 0.024299]=C2=A0=C2=A0 Normal zone: 89128960 pages, LIFO=
 batch:63
[=C2=A0=C2=A0=C2=A0 0.025289] Initmem setup node 2 [mem 0x000000ab00000000-=
0x000001033fffffff]
[=C2=A0=C2=A0=C2=A0 0.025291] On node 2 totalpages: 89391104
[=C2=A0=C2=A0=C2=A0 0.025292]=C2=A0=C2=A0 Normal zone: 1445888 pages used f=
or memmap
[=C2=A0=C2=A0=C2=A0 0.025293]=C2=A0=C2=A0 Normal zone: 89391104 pages, LIFO=
 batch:63
[=C2=A0=C2=A0=C2=A0 2.096982] ACPI: PM-Timer IO Port: 0x448
[=C2=A0=C2=A0=C2=A0 2.096987] ACPI: Local APIC address 0xfee00000

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DM6PR05MB5292D8B85FA9DDE263F6147AA41D0%40DM6PR05MB5292.na=
mprd05.prod.outlook.com.
