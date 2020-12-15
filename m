Return-Path: <clang-built-linux+bncBAABBJVK4H7AKGQERECAEEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F402DA80D
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 07:18:16 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id t12sf5763365qvj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 22:18:16 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1608013095; cv=pass;
        d=google.com; s=arc-20160816;
        b=wELfi4Gx/EDUA0I/VPPaaMS2gsRJGpLg75ZpxSP4i0nlh1ETLk3uzE1gvUTyatKirU
         wW6Oh/05dfK788IQkr/uVoXyYoY3x76OIUIJKnHfz1lURbxRg4Bc/BOdWXph8YAPtuo0
         QTVqkg5sb9xjvUkPbz45ikODyOGbbW5f9ZIUIsfNhGhZcTlo5Zw422olpqmKw/YvYHe9
         JcLjLzYuyBxFe7W85+wBnhV3Y/FOWK37V6nehDaMITF2C8xdhFVWT1t2hSycUt4RXlfM
         7kj8V958NbYakvmYAHhyM6IkQ3TpRxbyrM+08340ZeL+ErBhUy8FRLYHHTuUL+XzQpvt
         2DYw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-version:dlp-product
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=jcQeu54Gvb6lXLm8cIclPiTuTxoYPeL1dGvqtykYaSg=;
        b=UIixGLVDIqPGSZiIsdz1Z3KrWljvt0B4/V0SSx0yq7iAh8WwImhbeQ8ql9aZ9wf/wl
         cavDdMa5KNcUYF8FNCroM4rPY0QwxylSc+SNRFVOV/zKjqJZs4J4Fb3W4vvWP62wn2Bo
         ySm16uw7GD5DAD88NWmr1TWLrQbb3T0W6n8Y6PQESJVtc/AUl10JSD8tfLkYB8SsH7bV
         GFTOP2jbEpGYVjYsoybNyXFdN5tNbr0kmyY9sDIAw6QdPucBjJ8FLxIQ9lheVHmg2yMs
         4IF3Lq4ua8TzqC7PEvMSwS02vso55Wbb52ggI1BV19qYgQgd0g5Q7gYIRrX8i4wOd6Yw
         kB7Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=4Vd5Oqo0;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of guchun.chen@amd.com designates 40.107.102.75 as permitted sender) smtp.mailfrom=Guchun.Chen@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits
         :dlp-product:dlp-version:dlp-reaction:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jcQeu54Gvb6lXLm8cIclPiTuTxoYPeL1dGvqtykYaSg=;
        b=NKYqgBsSM5hwJ+zayc2HA4hoxqIZQW7wnRDC4z741JXXse1uP5dNcqpCimD6q9A3Z6
         E4IIOuVQd2CE24ERhMkhelrrdgf8VT/+HLBqDKrhMa6jnk748LfhC/HHzl6yQty2VPqH
         HZQWZXA7k70w/Y/tHUf+NmdNNtWzqBYoGxUQNlW6feEfsRuwm8jlrpe8mGr42JNruA+P
         wEdE/ZVe7u8/1SUUvhd3DvQ1D4Szm+HrM9Q4NcCnGGnWMVp9Coi7DsZJPJOGE+JL8AXj
         lJ3JzhS18fGdviBp5ZICSqwG+gkaCF56jQGuiUG0dkxeLGt5xzjxg697UhQhLh+CpY44
         4C8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits
         :dlp-product:dlp-version:dlp-reaction:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jcQeu54Gvb6lXLm8cIclPiTuTxoYPeL1dGvqtykYaSg=;
        b=cLMn4zf8rbdKezS77P9FHJLaiE73Pn1ZMjuMM4RhILMf+6hpgYYFHAM2RypwbS4ilK
         IejIbZwH8IW5mRuZyz2ues6Hs0kM8GkkRPZqbH7KyHf8ZF4FCIiTUphK5GP/vitP2Neu
         pEUVw9j/SvBFYlsf3DEAcitiHhFuKV7PM6hAfVwKw18aTRhQb82nP/P9+XQNf0iMNANE
         AWCU4wETPtRNgzw0vTJ42VMPR13dZUcif6rjAUCL7n6JIQQpN8nDGN2u1Ff32LLaba9L
         E4UgzsbBt8cA3RSFs/iVJ/WJ/CTInxuyHQQ0qfjYspgfZPyDpRJhYUc8z40dJfHbrLOL
         k93g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531X3OCsW+TO5OFe1qts5amLF1wBYDcbweaLcAgDU3HbiTpgrG+8
	7de15dfU+bJgT00GNpAdPkc=
X-Google-Smtp-Source: ABdhPJxbKaAoU/phtCqNao8KFKubFtuT019hM3bSdnIynN4gCrS4Te8wtWNZ5WWjocd8oM8Xoot0og==
X-Received: by 2002:a0c:b48c:: with SMTP id c12mr21895026qve.9.1608013095031;
        Mon, 14 Dec 2020 22:18:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:242:: with SMTP id q2ls9313140qkn.9.gmail; Mon, 14
 Dec 2020 22:18:14 -0800 (PST)
X-Received: by 2002:a37:5156:: with SMTP id f83mr38399507qkb.197.1608013094519;
        Mon, 14 Dec 2020 22:18:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608013094; cv=pass;
        d=google.com; s=arc-20160816;
        b=AIHir6QGDiFOIqD480+jOsevflbcCQNsGT8cxn1ZljMZt/p5cWtBjSxdLl3xlqQ2UI
         CUwTniIGSnNHyCOe7SWvSIWOg5gAiBGw5DLCwSJO8V0WD15DutB+OzmyxU31O77YYKRz
         c8Lw0CzsW5LfBg1xMKD+qZMHiV9eB03bK+ALRTEftYEzSdXvmwfSLxK+//lmSQ+IJ0If
         iCtXrCHHSvYchFd0mPUl/m38B7VFjDf74IYHnpzK138je7sj4m4GFKy5n6PooGZTHuZ5
         k010u28QH2TMPur2i2gRuneTxi96uWFSYjY4Ao/J7DNBiQtL18ROmTSfd904ii4wCfKr
         gUyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate
         :msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=4ahUzLA/WilhBR7/KPFv1D+2atPe3azD1liCciKR3bI=;
        b=upBo/gxEoo8hcJ3O9cIltTkwC7io0BqGTiQ0fpmbfXUAXazYXZTfByCoehzup2k3uH
         rzH1+mbyTxU5f92a5N2enarFHyWSgv3uf7Luizut6NTsMVR9P2zKTx0Pz/RFyIIe+3LG
         qx3y/SYVQKLv0JSGXqMpFd+lL3HNHfJbZE4xDwSgHiS3WaZOjh456uIelh7Kc6munrgQ
         bZOMGeE5w0yNuK4eKbZLMkF+I/r9tiODZDl70jj9UINQ24TuyxDwTmMsy/sFzPb2cXy8
         l/nEptSUiyACWGETPHqNCSvLOA6PK8UMcKSJ4OcTy8hiYOrB0owZ4YWcgY4rxnuexzF9
         fuvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=4Vd5Oqo0;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of guchun.chen@amd.com designates 40.107.102.75 as permitted sender) smtp.mailfrom=Guchun.Chen@amd.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam08on2075.outbound.protection.outlook.com. [40.107.102.75])
        by gmr-mx.google.com with ESMTPS id t2si996742qkg.0.2020.12.14.22.18.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 22:18:14 -0800 (PST)
Received-SPF: pass (google.com: domain of guchun.chen@amd.com designates 40.107.102.75 as permitted sender) client-ip=40.107.102.75;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ViwcHr6hXj3zwM/JKbIRQ0Vf4DcBG02rHmOR5wnDkw3Xmj8bvmPGcGCbY3Gqr/Fh67wIHfaFIZ7sjTOLw+G36h2qGTLjnG7SXttLU4alMq8kUpd1j8P69x3RjrF/Vkdo5sLLVVg8edtpm06gfCO3M0/3DU0vMHQAoXccyICY7UGYAsD2MQiI+ljL0zs+2CDwQgCsNIvFBRB9O1dHI5+uzzwMkVgzJy5DLBshQi90TXOgRGV1HyxE9c2WGMtbV4I6F/WLyY6uXi7a8k51NsZ1K4rnMkH2KTp80LX/J0/DC+c097O/VT3Fs3fVihVmWHkfxnpDdcfbiJiYbYLWpP9mLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ahUzLA/WilhBR7/KPFv1D+2atPe3azD1liCciKR3bI=;
 b=EQIo8Xi+MmEEOGYVEeu39mLMlddERQ9En/xAOpRpO+PSYWs2WOs1T64x71g+pybzE/DYVZH0LM+XLn6wWGeV026A+/5zE2oIrCEbjERs8N5gOFC03UkRpkFEuM6+/G0no3w2MOinT5XZq77MfX46HyTmTu6ZlJoEWYLCCiVSYjdFV/c0iQXSFhQU7v2wS9kgvM7wMtq2hDzOXJV8kQlgN1X8alkkEYH8is86WYXvfI48zNKM7FYFN3baW2RdXxajKVuxYbXKe/RysrsdmWYfO7Vw4d/BVAg15VxfUz5ZA7hvK2zGe2F7Q2hCgpoXu2rlt5uvt8/qLSP0C38FNT3Q5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from CY4PR12MB1287.namprd12.prod.outlook.com (2603:10b6:903:40::8)
 by CY4PR12MB1271.namprd12.prod.outlook.com (2603:10b6:903:3d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.14; Tue, 15 Dec
 2020 06:18:13 +0000
Received: from CY4PR12MB1287.namprd12.prod.outlook.com
 ([fe80::bc0f:dd2:ef80:de2]) by CY4PR12MB1287.namprd12.prod.outlook.com
 ([fe80::bc0f:dd2:ef80:de2%12]) with mapi id 15.20.3654.025; Tue, 15 Dec 2020
 06:18:12 +0000
From: "Chen, Guchun" <Guchun.Chen@amd.com>
To: kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Li,
 Dennis" <Dennis.Li@amd.com>
Subject: RE: [radeon-alex:amd-20.45 2387/2427]
 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1284:2: warning: ignoring return
 value of function declared with 'warn_unused_result' attribute
Thread-Topic: [radeon-alex:amd-20.45 2387/2427]
 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1284:2: warning: ignoring return
 value of function declared with 'warn_unused_result' attribute
Thread-Index: AQHW0qaaZoAY9mqweE+xuIx/bUFrHKn3rmPw
Date: Tue, 15 Dec 2020 06:18:12 +0000
Message-ID: <CY4PR12MB1287C444F22CD45E70061C52F1C60@CY4PR12MB1287.namprd12.prod.outlook.com>
References: <202012151335.lqRKtqi9-lkp@intel.com>
In-Reply-To: <202012151335.lqRKtqi9-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Enabled=true;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_SetDate=2020-12-15T06:16:43Z;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Method=Privileged;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_Name=Public_0;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_ActionId=a06892ec-c0f1-4bb8-9455-00002763d06f;
 MSIP_Label_0d814d60-469d-470c-8cb0-58434e2bf457_ContentBits=1
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_enabled: true
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_setdate: 2020-12-15T06:18:10Z
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_method: Privileged
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_name: Public_0
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_siteid: 3dd8961f-e488-4e60-8e11-a82d994e183d
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_actionid: e8526564-1a74-42a5-ba1d-0000a1ef4ab0
msip_label_0d814d60-469d-470c-8cb0-58434e2bf457_contentbits: 0
dlp-product: dlpe-windows
dlp-version: 11.5.0.60
dlp-reaction: no-action
x-originating-ip: [180.167.199.189]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 52a54d49-2915-4db7-6c38-08d8a0c13398
x-ms-traffictypediagnostic: CY4PR12MB1271:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR12MB1271226EFAE03AD115E08226F1C60@CY4PR12MB1271.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:82;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sWC41EqM6HsGv0rJE87bhh2oDqpXXIG6I6qUwzhhkbOtpc2wUilrb4k0xe2IsVEvvP9014QFTb0w+U8evk5s1bZ7zS+P+CNU7B+g/AH2mvBkS0Q1UZslgFtIUAxxT1lAeortm+ud0bYZwAdtGr9gDskk6+W4blNYxrSCbflCWMT0Vxgoq8Tgb2dAjgbKq3nxtil/S+rh8LXj4nqdyyi0gAH13/ILMmB025p59Uy5haLQ8AGO5ngP+rH5uRuC4fAOSXUWUp5ElIEB/BI7P7H+jhrZkPSdE/laD+LxXI41nx/AQEov+qoF+F27a1mQhm/UfEOeekRcge9PkhsqcflslpOF80F+jIhsextZatHnJwCiC0e/iZbe+/2HsnVHXOQGbshVIyVr7Fsy7m7mLY3sAg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR12MB1287.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(366004)(136003)(6916009)(71200400001)(66946007)(5660300002)(52536014)(53546011)(54906003)(2906002)(4326008)(26005)(6506007)(7696005)(83380400001)(66446008)(966005)(86362001)(8936002)(508600001)(66556008)(186003)(9686003)(45080400002)(55016002)(8676002)(64756008)(33656002)(76116006)(66476007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?k06YkTq18vYmsJP70KfjfJ3G3DbnTeU89RFn+9KUxCApWxrNpbM8WkzHI8zI?=
 =?us-ascii?Q?eJlM10NluGA7Ui8Pe2JaTNNWLvzJrZSmJx3wGfcOlG0dJB2k4MfBNJcMOyfX?=
 =?us-ascii?Q?Rr16cYnT7YBBQdqqfyt9zmuQKVvChj+2BvhjH1Q1WTB0owtUwtZyq7lfYSWW?=
 =?us-ascii?Q?xv6Pb2InzR80Jh7+hVqpw6Q5Yylh0rgqj7ApkLwcCPm9ASfm460iq9NrkCdP?=
 =?us-ascii?Q?EFdT8Y+1tBb5xTKrshapNuAjceT2xGLBSGtUDY2Zh1urfq/Fh6H5H/soDa2a?=
 =?us-ascii?Q?SQvnwHsE6dQ1UIYdBBG/nEFZ29Hkl6IBIjT5qer4FKt2oALF/usjJHaM9ujy?=
 =?us-ascii?Q?PPVOtU2zeh55nEBfO2ynvowg+nVYPTb7WzSO6K5rvDAYFyxvjumjJ/ck0Sd0?=
 =?us-ascii?Q?RpTW20IKS9L3GSC6bFsPDhPpS9qmCtgSjR+BZHt4Re5Y8CLDg/sj+uZYGsx+?=
 =?us-ascii?Q?e70HVzF5KoIAQO3YGfpDDt3QmwbOfD58AqMjZYDjAAWcopxtqTiXe8e43c3c?=
 =?us-ascii?Q?niVhFJuWM4MtRvESZmyQR7wOI3L6ETxEHBc/sfSQ634sJLnpBTZ+kvOh02LX?=
 =?us-ascii?Q?PJEQr3SmoywfmA/5ek5bPuCLqdXGHwHquZ0l53NT1pRwKsKbftQNQIlitz1e?=
 =?us-ascii?Q?JCygajwcvjooGus/UXkn5Haf1DyWqWiJK9w3V1ojgbcV+PWFtOmK275KsVhx?=
 =?us-ascii?Q?nd9mr7sV2rLObp7FQyK1mQYUByJs4/LnlEs+qnUF2Czr5fGTJS/OaQ6Fmb8h?=
 =?us-ascii?Q?HfTCIZMJM3Tls2AGXjHI1SmjV0WoctzHM1RAkxq1MzeCNj/cCHoXMpjjoMwg?=
 =?us-ascii?Q?89iTpNOcTrbaKx/UU1bkzJlc8f6Rxuf0oXPiIBDYyJwZNrPU38mv728Hkl05?=
 =?us-ascii?Q?BJhgJXjgeii0tPAni0IdjAVr/199zz4RMV77vRuzVEC7eYItxSfPZzOUcu3s?=
 =?us-ascii?Q?z0SWJxbmyaYbCDV8elxd73l1qTq04s6jdXbWLB8fNVbmyKOfGDXcOOv08/iu?=
 =?us-ascii?Q?3cS3?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR12MB1287.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a54d49-2915-4db7-6c38-08d8a0c13398
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2020 06:18:12.6265
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UxPpOJlYAtpK7X7JV2cqqsNzJJZc4PoyUuzFq6qJeF7/IwRAdAzks7XoaqWn5gaoj+N+7sA4EEeQOC5SDOnhvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1271
X-Original-Sender: guchun.chen@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=4Vd5Oqo0;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=pass (google.com:
 domain of guchun.chen@amd.com designates 40.107.102.75 as permitted sender)
 smtp.mailfrom=Guchun.Chen@amd.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=amd.com
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

[AMD Public Use]

Hi there,

I will fix this soon. The issue is reported on amd-20.45 branch, which was =
branched out ahead of the fix available on mainline.

Regards,
Guchun

-----Original Message-----
From: kernel test robot <lkp@intel.com>=20
Sent: Tuesday, December 15, 2020 1:49 PM
To: Chen, Guchun <Guchun.Chen@amd.com>
Cc: kbuild-all@lists.01.org; clang-built-linux@googlegroups.com; dri-devel@=
lists.freedesktop.org; Li, Dennis <Dennis.Li@amd.com>
Subject: [radeon-alex:amd-20.45 2387/2427] drivers/gpu/drm/amd/amdgpu/amdgp=
u_ras.c:1284:2: warning: ignoring return value of function declared with 'w=
arn_unused_result' attribute

Hi Guchun,

FYI, the error/warning still remains.

tree:   git://people.freedesktop.org/~agd5f/linux.git amd-20.45
head:   a3950d94b046fb206e58fd3ec717f071c0203ba3
commit: cf13e50dea28cde351fa32767e36135afb30386d [2387/2427] drm/amdgpu: cl=
ean up ras sysfs creation (v2)
config: x86_64-randconfig-a002-20201214 (attached as .config)
compiler: clang version 12.0.0 (https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&amp;data=3D04%7C0=
1%7Cguchun.chen%40amd.com%7C708cce12ecaa4d2ee1d108d8a0bd3135%7C3dd8961fe488=
4e608e11a82d994e183d%7C0%7C0%7C637436084052882308%7CUnknown%7CTWFpbGZsb3d8e=
yJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&am=
p;sdata=3DI4ohtcRRR8iQs%2FfkMhy%2B7pnsAJ4V%2Br%2F0EpNjcoQp%2B4s%3D&amp;rese=
rved=3D0 a29ecca7819a6ed4250d3689b12b1f664bb790d7)
reproduce (this is a W=3D1 build):
        wget https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fraw.githubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.=
cross&amp;data=3D04%7C01%7Cguchun.chen%40amd.com%7C708cce12ecaa4d2ee1d108d8=
a0bd3135%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637436084052892302%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C1000&amp;sdata=3Dijbznpvhsb43YLeQJ6UZb%2BfG4mnCiAA2ZmPQhLgz=
6Ig%3D&amp;reserved=3D0 -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add radeon-alex git://people.freedesktop.org/~agd5f/linu=
x.git
        git fetch --no-tags radeon-alex amd-20.45
        git checkout cf13e50dea28cde351fa32767e36135afb30386d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:906:5: warning: no previous prot=
otype for function 'amdgpu_ras_error_cure' [-Wmissing-prototypes]
   int amdgpu_ras_error_cure(struct amdgpu_device *adev,
       ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:906:1: note: declare 'static' if=
 the function is not intended to be used outside of this translation unit
   int amdgpu_ras_error_cure(struct amdgpu_device *adev,
   ^
   static=20
>> drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1284:2: warning: ignoring return=
 value of function declared with 'warn_unused_result' attribute [-Wunused-r=
esult]
           sysfs_create_group(&adev->dev->kobj, &group);
           ^~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~
   2 warnings generated.

vim +/warn_unused_result +1284 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c

  1249=09
  1250	/* ras fs */
  1251	static BIN_ATTR(gpu_vram_bad_pages, S_IRUGO,
  1252			amdgpu_ras_sysfs_badpages_read, NULL, 0);
  1253	static DEVICE_ATTR(features, S_IRUGO,
  1254			amdgpu_ras_sysfs_features_read, NULL);
  1255	static int amdgpu_ras_fs_init(struct amdgpu_device *adev)
  1256	{
  1257		struct amdgpu_ras *con =3D amdgpu_ras_get_context(adev);
  1258		struct attribute_group group =3D {
  1259			.name =3D RAS_FS_NAME,
  1260		};
  1261		struct attribute *attrs[] =3D {
  1262			&con->features_attr.attr,
  1263			NULL
  1264		};
  1265		struct bin_attribute *bin_attrs[] =3D {
  1266			NULL,
  1267			NULL,
  1268		};
  1269=09
  1270		/* add features entry */
  1271		con->features_attr =3D dev_attr_features;
  1272		group.attrs =3D attrs;
  1273		sysfs_attr_init(attrs[0]);
  1274=09
  1275		if (amdgpu_bad_page_threshold !=3D 0) {
  1276			/* add bad_page_features entry */
  1277			bin_attr_gpu_vram_bad_pages.private =3D NULL;
  1278			con->badpages_attr =3D bin_attr_gpu_vram_bad_pages;
  1279			bin_attrs[0] =3D &con->badpages_attr;
  1280			group.bin_attrs =3D bin_attrs;
  1281			sysfs_bin_attr_init(bin_attrs[0]);
  1282		}
  1283=09
> 1284		sysfs_create_group(&adev->dev->kobj, &group);
  1285=09
  1286		return 0;
  1287	}
  1288=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.0=
1.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;data=3D04%7C01%7C=
guchun.chen%40amd.com%7C708cce12ecaa4d2ee1d108d8a0bd3135%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C0%7C637436084052892302%7CUnknown%7CTWFpbGZsb3d8eyJWI=
joiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sd=
ata=3D3yLWtrUMlcPIY%2BMPElzz0R3JmvxV94d6yb0qKIZgdZM%3D&amp;reserved=3D0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CY4PR12MB1287C444F22CD45E70061C52F1C60%40CY4PR12MB1287.na=
mprd12.prod.outlook.com.
