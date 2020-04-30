Return-Path: <clang-built-linux+bncBDKZBHEW4UOBB45MVD2QKGQEC2PDDGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 464051BECD5
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 02:06:13 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id t80sf2881124oih.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 17:06:13 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588205171; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qgtm3Idj+zvkRUANK5+MhgGAecLMESP1BUJMOhgsuEsVLGi8+Wuhwi890de/Tvjuvp
         9rP0vL1QcW3ECnDVG2h2kCu4AS8hJN4xY+o/m0D6Fgt0imq/ZlPw+4NitaTYatTIj+2e
         dkDIdGoIzW8u/+YnnkkalqtdKvuCMwweJ+0omb+AXnwcscoO9+lXUYLEOu1noKbG705r
         bkTCagM4yJ6ZJ2H0EnAHEKOYfUaiw04PD1HDl1pUYM7AGZ1VlBkhNJo5o5zjydup0jkL
         Acx2Cdhxh5vSPrL2LA/FMhoSRvgsmojN3hoQh1bNcOWUcquJ5Ar0voJmPL0zL6IrBniP
         9Pnw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=hlwDCLo4zJcAEQeir/F+nElwW75qM4ua9r+/TKmKfm4=;
        b=exwcABUVCYM8p3q7an2Uq87BX4H8Q/Z0azp2zFxC9qOf2fWAV6wKhrHbtDOuUK5ZTf
         azKNYmh+7qkEoBCYaqaZ9uLXQEU2rYyLRgB8m9UfG6NaO6zvpfJ8PaSRNOyU+/M9DhAl
         d/xXvrkz4W7GNFscK71qx4KEPFdilzDYzPxVJYAYGhXfn6jbmgGWkk6VHe4nX+i3HAU3
         4ktKmGxeOoN+fOQvoWMYDblUMwRZdo0whsnE7RoiULT7kjnn9EkEJKugKBR4mP5g6hdf
         8IzcSpXnZT61gry9C6SzzA+46SGG5LfoYlgfVgmolhTnqx5oRvZ17nzjtWvX4GVBVorh
         EiPg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=B+QTyIAY;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of mikelley@microsoft.com designates 40.107.93.129 as permitted sender) smtp.mailfrom=mikelley@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hlwDCLo4zJcAEQeir/F+nElwW75qM4ua9r+/TKmKfm4=;
        b=CnygLo6ygZk2dENgnYMNLA+o+qBe4xUfvGeB8byapQuG29hYAdN6APi0zEgNeou+Yg
         so9dHYzaJnTKj/vUMpXX3Q71zNAvrpAdraW5UH+G9ePQ8xjxrQmjaFf0uYgTGYHkrJcS
         OovMbNdINqISA9M4nX5kmwwFN1k6GJzNBL/HNjCVw/kLCluUX+GErrIO0tmLW13nN41V
         pl2I+pzYWMm/DzyQrOyX+B/CP24wfF40MDB0coMfzZAg8F6AWSdsfDjVzsXXNZdYnvv3
         bIS+uOAFtSVUSkEZ0eDoq0bNZAfSLe2zpSFxDIQAmuexqTyuRTPkoOkJrOzHV1zqRQEi
         Yb6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hlwDCLo4zJcAEQeir/F+nElwW75qM4ua9r+/TKmKfm4=;
        b=mzQp6822ePsdUT06HBLaJCmrqPXr3ssRvJHwPmekHGDG7ZXKVmFbh7/B+5d7x1Hf7g
         s/e9pZsvb4m0TBx+e9+1+3EXKflfLiaWiu4k8zOz73wsYHEfcGbFsmkdOTzKfWoLXzry
         XoGLk+iPHQwwUhJDjYkX3cEeZAiA+vMmKZVtjJIAkkA8fThQIKRtAZZVjxmpBOmwIA8+
         cipS2aC4DHwDkNdb6ya3EpsKfOEQb8EMUfPME33RrBNl6M70D1MeIUy6DuB8DsGhlPua
         +dw2yr33mVL9HpY7jrrqAAyPLhf/SgUO8D/8VgWzDS6ePpZI3ueB+HYSzIG1DfpXeBi1
         WiQg==
X-Gm-Message-State: AGi0PuYUVJDnmdspfmEpelvMfgW6EGj/hNgMPIGJpEp7LHXELKkwG/pg
	rXAQAoUMe1GAa+uW/5ivv1o=
X-Google-Smtp-Source: APiQypLsLMN281NE7sdIRN5B7jwfuIUESyAy10kINYdDAJa9yEnupZSOqOUVnCfVOWmJkgG4O4PA7A==
X-Received: by 2002:a9d:107:: with SMTP id 7mr499294otu.48.1588205171642;
        Wed, 29 Apr 2020 17:06:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3b23:: with SMTP id z32ls176241otb.1.gmail; Wed, 29 Apr
 2020 17:06:11 -0700 (PDT)
X-Received: by 2002:a9d:4902:: with SMTP id e2mr456013otf.86.1588205171177;
        Wed, 29 Apr 2020 17:06:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588205171; cv=pass;
        d=google.com; s=arc-20160816;
        b=SDoO97gFcHD7KNPW7pLZBXAKekh1ML/a+oj34nzhQJ7Gr+gWgEeSFW6YI0/oz0gha1
         d4uqOI6LMbCVonBeFWyL6+ighXZkbSWhqTMRW2R2+JS9bjfl5u2XMvILHA1FQXnVVrEP
         iWDpCeQvD0R1Cm2DxsI3xIK3JxsBk4LaHbMH4ZipgT5XBYNOet51ZkDj+SaPxH+K4ppn
         nlHWyT7ROJ0GYJa6/1ddYM2T/BljgK2rf/Xlegmrd7BYtelbg/wIrJHN3m9u+eKd40E8
         zOaQ2aLjDQPvQfoo5pBGkB/67xQMg9IuAmQmRBkfguzUMIgkyetkPW5UJ2aGXu4u4CaK
         EmKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=ctpjImKYcbtW+n3GN8WP80+T5+SaBnVtH9iDhiUEIEw=;
        b=n3eR2B1r1yWOLlx1ALHNktHh9WudEuQktp42i689ljBQ2vjrrzesVN3c60jZ0g6IUd
         HTtz9ghncVCQYGv3HRRvCDiNHq58441wBX3NWtphZG+i0KVU2BUFyi1RaWn+q5aGoiF6
         a+F+a2i0aM9qAi1lDOIa8mPALdwtlVNX++cYar0RstmClJG4Jlpt96DS9VLprMZHOsNg
         GHukPuqMKW+PM9Sij8Gt8U8/jC4fMV8sxgVFhVHIhSiI3NKBBu3gy9/1sF0pVeuouFh2
         ZS8UhRCWml+dQaGgCvVh4YtZwDPq6l5xiuyJIDutxn//GhnLPllzXEYm8ktEucD2V68C
         jb4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=B+QTyIAY;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of mikelley@microsoft.com designates 40.107.93.129 as permitted sender) smtp.mailfrom=mikelley@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2129.outbound.protection.outlook.com. [40.107.93.129])
        by gmr-mx.google.com with ESMTPS id w196si269654oif.4.2020.04.29.17.06.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Apr 2020 17:06:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mikelley@microsoft.com designates 40.107.93.129 as permitted sender) client-ip=40.107.93.129;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TH9OIkQILnFepIOBi34HwDTwnpeSR9pbCz6G9Lfe1fgQdeDjlfpaWs8vi7xVCCT0kHRvqkkPyCMaGNkz6Gi2eQGEkx79ydk+QDr5CRaXvQV+/VhJqDjjf+1Y8R+Wj7U5J1QTl+ZwWAbR+0b3zSrvz/3S3V06XIhKDUY5iqnF3IV2w2PsARN0d3r9NHRTW1Px0J78BUzvwKCm16t1cSXcIfMCSECjwM5vF/J/XmFUS7u69sozvNKZE4PwKP5N2WzgI3DA+awxeSTJrSSaxLyXCBr42hjEEwAdte/yqWhXVMujxs6guwaV+bvnmKQCM7mhC4Oylymjpa2Q7R/TtfCrjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ctpjImKYcbtW+n3GN8WP80+T5+SaBnVtH9iDhiUEIEw=;
 b=PU8ddetmOAOI6xZtNEa6PN1vBdy4KQ25w2VjTRowgrsl8AXcKDyxE5auH0SejqLBK68VNa8NI+TvLnId2NADha+2FCtNCmRnt5/tfxGv0acwJsuKoyi5cbMNacHyw9QUzC2yqjbLR9fJ+k7xPRyOLxPc7sNIWXnY0qXqHp/NM8VdtIJ9JZPwapoLequXDsaovGZLyCTh/VoTnp6Hd4FHXegLPk6KbsvUxXxMAz4C5ftFcte7cgys46xyYkP0UpV0Wi9D8dmrfq0wl2L+xIAEX3rHkLnPBnsgs2UF8C2PHOv08DSivi3XytiX1aBi8Vuut4kIZOWkhWlhzhVuOI3Oyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1065.namprd21.prod.outlook.com (2603:10b6:302:a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.4; Thu, 30 Apr
 2020 00:06:09 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::5a3:a5e0:1e3c:e950]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::5a3:a5e0:1e3c:e950%5]) with mapi id 15.20.2979.013; Thu, 30 Apr 2020
 00:06:09 +0000
From: "'Michael Kelley' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>, KY Srinivasan
	<kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, Stephen
 Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>
CC: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: RE: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
Thread-Topic: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
Thread-Index: AQHWHYZG1Nlm2xaz8EKxX/yhRvOanaiQyLNQ
Date: Thu, 30 Apr 2020 00:06:09 +0000
Message-ID: <MW2PR2101MB10522D4D5EBAB469FE5B4D8BD7AA0@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <20200428100828.aslw3pn5nhwtlsnt@liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net>
 <20200428175455.2109973-1-natechancellor@gmail.com>
In-Reply-To: <20200428175455.2109973-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-04-30T00:06:07.5267853Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=6e5aa217-5279-40b8-8e26-8f27ea312146;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2e8663b2-a869-47b1-226b-08d7ec9a4953
x-ms-traffictypediagnostic: MW2PR2101MB1065:|MW2PR2101MB1065:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW2PR2101MB1065C0D8F420157828B300F3D7AA0@MW2PR2101MB1065.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:972;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vqsn6jd4vEJyUYKF00+K8zDFSvvXhowo4Edfrepk43qrnZIYkX00StAUQmha3khIJ+7xo1+JnOD1Uxlgvl7OlBoY59Gz4TUrsLEtUExtIlOhAw/vmdoWIqYicRtNulkje5xtC1kEX/gSDsfY0HiSqkTdUh9J0ZdL43JIZnojkbQEFlxPYSJgWeZ8vApHp3ClOhEW/h4f7aJCK6mhJld9SAB8vczi0FSCzcONhagof2ruvOO5DThODbCwk4dVsH0b1qGkI4DQKVRQZ1Hz4Pz88ZWyI24vVgBA3zcm77ixaQBlAnCXt9ksx+Zgl+XqZB6/DKs6C/GJwTetv6ENHVe/LIL79LtJcz9PEqR70+THcasAfu5rsEk+ciDlJ0bj+eWFX9ewJRNdRQjfW1CIGK0nzAKuJb5UBmufRLfc9Q123TgY6gX+70Oia2ncTdhMS/Bl
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW2PR2101MB1052.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(366004)(376002)(136003)(39860400002)(346002)(316002)(8990500004)(2906002)(52536014)(55016002)(5660300002)(9686003)(71200400001)(33656002)(7696005)(10290500003)(8676002)(76116006)(54906003)(110136005)(26005)(478600001)(186003)(66946007)(4326008)(66556008)(66446008)(66476007)(82960400001)(6506007)(82950400001)(64756008)(86362001)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: gqebTXqY34CfjHtu+sj9zxo+dKGO8yH254f2R8+fJZ+FScGNZt8VEHt4sNtwGXnW15i++fjS2gPuitBnzHIx4ce8ljw4x0iu/PP/3z1aVZ/4nM7yYXES/5JBzwkOxSi1YkezfvBh4CY96G0ibJYwl5a+ZTizKyXmwt9yFI3M63werfcQl2HWjbZ3C6t4E1w9f7oNpzerFCtz2Li6BXlqGOVwRvc6ykWUCCc5ZbOQUG+n3TuyUG8+76wOmJCdFNBsaQJl3uJdCjjmFTr1NQTVGp1814vIV2xPcsaOcdfryE0ub6bCxFzMG9DnxuLMN4SdDcyWs/vB4CqNt12/dQjL4IZqNrIkoBQEvMl+6cBnGny9e6XN+co5NQptm3E4sLWxcNHLmB29QlHPDP0IbRLQSIa6RRxzejT/2162FiCjXQH3yfBqHDepFl8ptFgBfV1Loumyfbwxhz6jIX33+8t2NYXeqkIfJ2a7ICPNi81CjbsgkluudGFkpYwwhNQT0u0WR1NVPzS3pOyt41ISAwLlO6Y7jM5MuDz21ZO88DwKcGvftaDPhzTLSHO1ga0IVCATBdeMyiu4qXD0eB38mJ4M/2FJhfhXrQ+onBlQ+vUWH4OfCh3B/2QFqXwTmG2U5OBiJh0r77mrPDnd4jy66QUp3XIbjX8ind33YFbzUMNraAlEQ1yiqrc6n1aYDooZynd4eVrdABFJr2a9sWtqxy9uerU/plZixw5aQHqzkJkDLkAdla8WGlB15zMIaf3sGJfraHEtJy39/cRrFjenuqpZd9UIbU8ZgyVfwg57IR/AhQ8=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e8663b2-a869-47b1-226b-08d7ec9a4953
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 00:06:09.3509
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LWB3v8/CKqkxXyCynlfo+mT3SbGthOnxRfo3U+XNiuBt7kVwA3bP0eSprxKsHshZorniVTK+6oVl8ScPeC2998ik5BGbLkbrIEWErvchRH4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1065
X-Original-Sender: mikelley@microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microsoft.com header.s=selector2 header.b=B+QTyIAY;       arc=pass
 (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com
 dmarc=pass fromdomain=microsoft.com);       spf=pass (google.com: domain of
 mikelley@microsoft.com designates 40.107.93.129 as permitted sender)
 smtp.mailfrom=mikelley@microsoft.com;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=microsoft.com
X-Original-From: Michael Kelley <mikelley@microsoft.com>
Reply-To: Michael Kelley <mikelley@microsoft.com>
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

From: Nathan Chancellor <natechancellor@gmail.com> Sent: Tuesday, April 28, 2020 10:55 AM
> 
> Do note that netvsc_xmit still returns int because netvsc_xmit has a
> potential return from netvsc_vf_xmit, which does not return netdev_tx_t
> because of the call to dev_queue_xmit.
> 
> I am not sure if that is an oversight that was introduced by
> commit 0c195567a8f6e ("netvsc: transparent VF management") or if
> everything works properly as it is now.
> 
> My patch is purely concerned with making the definition match the
> prototype so it should be NFC aside from avoiding the CFI panic.
> 

While it probably works correctly now, I'm not too keen on just
changing the return type for netvsc_start_xmit() and assuming the
'int' that is returned from netvsc_xmit() will be correctly mapped to
the netdev_tx_t enum type.  While that mapping probably happens
correctly at the moment, this really should have a more holistic fix.

Nathan -- are you willing to look at doing the more holistic fix?  Or
should we see about asking Haiyang Zhang to do it?

Michael

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MW2PR2101MB10522D4D5EBAB469FE5B4D8BD7AA0%40MW2PR2101MB1052.namprd21.prod.outlook.com.
