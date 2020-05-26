Return-Path: <clang-built-linux+bncBAABBB5AW33AKGQE2OXDQ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C09051E3185
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 23:54:15 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id dk23sf9607926edb.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:54:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1590530055; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZfIZW2NqEnqsZ4EixAxShDSlJWkAqBe09QC9M4nz5KYj9ikMZE/lJnpLH8Lw3MmUw7
         2AyeXBZFtYHZmYoW30tuCGnYD1WFZeQc8MFnqnXsUfWkvzfXvRFk+wuIEl1AJK0+xjer
         QapY9FF0h1DqQR3RkynE6S44m6mF1W0R8iPPASGj1a2LB6lbV3ntj3pFFu1OZtZyrCfT
         Kr+UUf6ibZumY5CiHCWHfq+eE81kNeJKABf97CnslRVfmvcfiuQJ+sVzHhA2P8ciNxd/
         SqKk7xUs/r72r5G3ud77RET9D6h9BbmPgHDROqHnV3zvwFeLilWQqYmSvtelzKWbKN2j
         Vi8g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=DjdIsxgbAh5dnHICiRRjwqCb3y+rV+w/LCSjRVVoxdU=;
        b=d8jmqQwn6ON2BtU94xVvRgRqg2FT31iVQ6c0Ri43L/pXQXcsudM5NH9WdDqYLt/FEJ
         9RhdXMWhD9jen2nttS+eitc6c1WAlMsXSvW4slMAtEx854Lvx/kzJgz183TFMSIylx5J
         3J0ESVxKVJrQ0xgVfI5+2J6ftp/wIlL7fWPW91alYmvuyQo/yoANiYRcfJRjcReXJ+P2
         E6blowpvVpdbsCwDOALn0wM86dawukqwV7Doj+45nKXRIYnHxZE2rmkYthJxRDUglsoi
         wVjFxoWzIOmUXr+J+yN0EBacCsBThmOFptOpklTdPGaf/S2j+ciZ6qzl3ibYtJCX5jk7
         L6sQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=a33AFcTa;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.22.60 as permitted sender) smtp.mailfrom=vladimir.oltean@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DjdIsxgbAh5dnHICiRRjwqCb3y+rV+w/LCSjRVVoxdU=;
        b=ItNSlENPqOaCq3ijUQbDcnz3+8rTj2LM0pOsiRZuM88DGQeXEbJ8BmPbykKSU9evn1
         vIhZBTda11RdWkX6IOiQ4JxAO9IRqZ0x4AgyBkyzA0y+rgsM4ICe1Js/wp2gMjCM4ycR
         yiCGPjPCvcRmLIYy6rIr53u8FBXH3R/EGBSkasPxstfhAKqW4F5Pcu5HOecdD3YMeIwR
         znPla9lLc4ZBi+wROcJEWFGSwO2YE3AIt38bAmNPba5vVZDqAl5bQjJ8DiCZQ0YJ5TXg
         3WK9qrDzw99voQqCNoLHY4M2SLefiL9HswIl5j/KOR2BQUgNvRwQOWdD6orBf0uV4WTr
         mKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DjdIsxgbAh5dnHICiRRjwqCb3y+rV+w/LCSjRVVoxdU=;
        b=Sh0/oxn+6nIDMmsYkpD6OUwLocfoyhcJoYdvrPu0i2Z/dGwkuwgXaTaEjEF4fdiT8T
         HPO8JcK/q0cUsw32GYgXo3x/WVE5TeM79J021XPLi12v5Ax8TFpMrWT5PAQxVPAjk9aG
         dZxnkKnKrdWohfL4OZUo8XfJ1TNT/4TPTJMlw7KYLu4JXMwSfZ+AnmmeXRUWxVgllXjZ
         k5zIoO2/NL2TfMmzpnv8PVfwbjEbouapKSIAWdKxlseCdni5H+6c56fwgYLuktoGdTs3
         f1Cl0sHsybvxblVyGhYLmxENfC9CmTefw+jH8AG0vS7E63kSwA/DQDUQNEbrhMgOPNKj
         nzVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lFvdGV1n0i7+5A+RCLLrCYktjycEXmUR9LfILOdyYSb22TI5i
	S7VcYlvjtDh54p1mMaJ7hDI=
X-Google-Smtp-Source: ABdhPJwlUB0Bl5mmL5skjiMAw0DQN5avRcQ53kakViNqcEK5Xe6PprU1CR2fo1aUKMA4vhU3YcjVZA==
X-Received: by 2002:aa7:d612:: with SMTP id c18mr23187492edr.282.1590530055565;
        Tue, 26 May 2020 14:54:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9f21:: with SMTP id b30ls13472456edf.1.gmail; Tue, 26
 May 2020 14:54:15 -0700 (PDT)
X-Received: by 2002:a05:6402:1bc1:: with SMTP id ch1mr22433146edb.90.1590530055142;
        Tue, 26 May 2020 14:54:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590530055; cv=pass;
        d=google.com; s=arc-20160816;
        b=GABU1XBiKiFFb9E/kOGQpp3LpgOvwLJ7tcPWkJ+Egw3Vf5cnQdrREbcylSwnFhNJpl
         ixlrSc0y+6r2zg1e6YIFtr35ZgXErcbthkNJoK8SDcea9SUo6sOxDJHd+mR7dPAVxBMu
         gDv/S4xyZ9Tk86caqMX53zj3ARNv7xOS0GbNYppFYmdwjnHdeHV9Oy58YlzTqi7/hFh4
         ay1IIMaf5H1wNSde4kPMam5HWWoiloKtMMM+qVZyULm9FHPS9MlrPC7YNRLnUdVtVoVM
         1xGjW018ZXZtXkaTsZtcWc68MCfoRv7FSojp5OGOJh4UO1W8L8kUBoiJP/awLFTPyppl
         1sOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=F/B2R7pfWukDSJPNCe6aqbYkXemp2FMJhSowYimKyxw=;
        b=JvWPMSmkj5ksNUL8PqSFsTmckW8r36edNls7Kp1eM/DDqbDJFXM7fF7nK8onkor9zb
         Le/mixd2+Sm8lbJMKzAO9nnjx5SEX/nxYsOcFaqe2q2ta/Xsxfd1q/aKHZTM4JlYnqZw
         pjDeb4+vVg3+cJ8l1jHrSpaDy5Wk50cRc9iVahBNT9UUyNJbuz6g4RwAtxSzkC4NzSuB
         BTjurJFXcPl9MfwZQKcppikVvyJ7QZ19BiDwZC9UgPpB+RrgzaaCJwZuGoEOz6rgAHIr
         9/ScebttDoIEHRIissEnPmCGJ2ftoJR3OnO2pKVdbssZTyuHaKN97qGPYrDDcrf+8wzL
         ej8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=a33AFcTa;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.22.60 as permitted sender) smtp.mailfrom=vladimir.oltean@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2060.outbound.protection.outlook.com. [40.107.22.60])
        by gmr-mx.google.com with ESMTPS id cm25si47439edb.5.2020.05.26.14.54.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 14:54:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of vladimir.oltean@nxp.com designates 40.107.22.60 as permitted sender) client-ip=40.107.22.60;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n5faM9F7vnNSBOHEzwMJT7ZemSS57NSbn1yyEkjvJ7lgd+RFdOMw5Oha7UoH+3HeyNOez62yDrZaK/YjML4o1pR89LxivReHpfsHh/d4RYSXvCXcocMbUJ9OdT+HR1gFxJId+SsiOh27TuGbmOBMBp4Xs7m3wfXN+W+oF0XV9hzklTQb4lshNDITWjaE/6F/L+YZ9qHtSgZb3Vl5oplxO3MTi19Y0ibw/D+6z3kAatCP+dUYoxsaqaZKwKaefpPrUtfiOmqqpqUpcSQy6+G75Ma75zkFpR97s1JRDIlqkyX1gLMBHCbzjfayv80hWFv50QwJg/8TyM5V53CFevlYEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F/B2R7pfWukDSJPNCe6aqbYkXemp2FMJhSowYimKyxw=;
 b=Q3ESPkV7xVFG5oZOdtiGg5uvRa4zmEu4oaVy3rX2r973VuiJITTzlKUZGvgHcGlZFT2ugTfhpjeRyjJ3ZWeImvn25gMj089bo9+p9/5JccquvmieIMSCcnsTi4rA9DwCxZAMxtorWQLJC3eHFZkSQ2DYzKUv71cBJB3XTXkFUqfHer7cYcnowuUOvW27gU4dsLmGeVCHpjLpC6ee5BHBInoH3xg4hEXBsiqWIH52pHHo02xmQOI9Q3U8ZwoUQM8C5p/9blte9IXRunDLNUXdbsnD+J02ueSWW69bkucBcGz18UuHvbVeokT/G0bfuYparhUIfhpsEeHSmBj5fCeCOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com (2603:10a6:803:e7::13)
 by VI1PR04MB4494.eurprd04.prod.outlook.com (2603:10a6:803:74::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Tue, 26 May
 2020 21:54:14 +0000
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::1df:4c77:2e50:22d4]) by VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::1df:4c77:2e50:22d4%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 21:54:14 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: kbuild test robot <lkp@intel.com>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [EXT] [linux-next:master 6663/12912]
 drivers/net/dsa/sja1105/sja1105_static_config.c:463:8: warning: no previous
 prototype for function 'sja1105_vl_lookup_entry_packing'
Thread-Topic: [EXT] [linux-next:master 6663/12912]
 drivers/net/dsa/sja1105/sja1105_static_config.c:463:8: warning: no previous
 prototype for function 'sja1105_vl_lookup_entry_packing'
Thread-Index: AQHWM5VRlELqGoI0O069kVZNBYAKBQ==
Date: Tue, 26 May 2020 21:54:13 +0000
Message-ID: <VI1PR04MB5696D5102C398E4858713CA1E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
References: <202005270324.fspPrqPY%lkp@intel.com>
 <VI1PR04MB5696BCF57BEEB9E874F98443E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
 <CAKwvOd=9w8fMazrrjrttHSXgFBHA0vp5tN6qA+dX=D5rqCRN4A@mail.gmail.com>
 <VI1PR04MB5696923A89D612E7EB299DA7E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
 <CAKwvOdnvfQXvSiBQjYdL3ASeB1WEoj-zJGURV1N+DNDZTAnh3Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.25.147.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e1db4935-05eb-49d2-5a7e-08d801bf547c
x-ms-traffictypediagnostic: VI1PR04MB4494:
x-microsoft-antispam-prvs: <VI1PR04MB4494A2EBD6131EFE03DCBD02E0B00@VI1PR04MB4494.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oFhAuSN5MR9kk64iOWOyPMIBWFC9uiaBj86NQ84CXjQoQEnFjaKkfJKGTkMpdJJpx5S2/NIG8EsTqK+DEdQvej8pgMHtj1spX6MLLADroflyc9GhnLUchy5plmXbPb+oXvYp/A9MRERjWJImnlBjO6SMnot/sWvXzI63EZajqER92NGUJoB7TXTPH5y8SMsqOoHC3NjrnAbFWyzSo/ZnBmFynkeYDNF39BiRr0f9RHWnJKv+kPU4yHGS3DGLw9RF117q6TOwvcBCTBtM8h5LogFXMU+j3lEPpYlQaTUnQympSerFv2BVHRvC/2/MTRvp
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5696.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(376002)(396003)(346002)(366004)(39860400002)(136003)(76116006)(6916009)(8936002)(5660300002)(71200400001)(186003)(26005)(52536014)(44832011)(478600001)(4326008)(9686003)(66946007)(66556008)(64756008)(66476007)(66446008)(2906002)(316002)(54906003)(8676002)(6506007)(53546011)(55016002)(7696005)(86362001)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: ejNjUSpJF/4c7plDzm/Jj7NBa53fA19g1bKfGksan5pLiqw/1VEoi2ePWGmKns7C/8fMhP+qTv9cUEubBAQ158pCho+1qF4yEJgPVrPebunfleiBn+tuKpWd+PkMHScWKkDtbns4lOrFXIPAemcCfEqfwlbh58WZaT8+0Ua1F/KSp0vGhEpEmdJSlnUBencX4trZxYJJAj6EBVZcuVNazPK3ks+TswtTqC1oP4MOJ07IaIkko1Fs0pTmy2dtZoeWbSW6UtHcrNQl8Ji3SJIrJT/srhg32YMPVKfbOjxl1tGxeo0QvQ3SKEVrby63g7ZQ30/GhI8ZAy+iAi1xsOfJ/fsFjL8Oeq8OR25TpbVrGZJ3d8v3251RNSpE5mg+zRxZtSlPAgt5ldwjuIoTWg5jYYgRfdsJd5jy7vC1qfiQUD4Wzt8OccZdYmzsarUKeKdkVGs4He/5JM1sPN5O8Ois0p2JjgKU0NIuRhki1IDBuyqzeDNFxul/DRFfTBsIg3Yz
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1db4935-05eb-49d2-5a7e-08d801bf547c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 21:54:13.9792
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b4CoRKyjU0cxfJdDM0fihWqgMNJswdFCghuqgKTEReW6wFXpQDC0xzflAVTj3utDdlCioqu2EEaX7c9XjFYCag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4494
X-Original-Sender: vladimir.oltean@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=a33AFcTa;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of
 vladimir.oltean@nxp.com designates 40.107.22.60 as permitted sender)
 smtp.mailfrom=vladimir.oltean@nxp.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=nxp.com
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

On 5/27/20 12:50 AM, Nick Desaulniers wrote:
> Caution: EXT Email
> 
> On Tue, May 26, 2020 at 2:48 PM Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
>>
>> Hi Nick,
>>
>> On 5/27/20 12:07 AM, Nick Desaulniers wrote:
>>> Caution: EXT Email
>>>
>>> On Tue, May 26, 2020 at 12:40 PM Vladimir Oltean
>>> <vladimir.oltean@nxp.com> wrote:
>>>>
>>>> What's wrong with a function that has no previous prototype?
>>>
>>> It's possible that functions definitions don't match their
>>> declarations, which would be an ABI mismatch.
>>>
>>>> What 'fix' would be recommended?
>>>
>>> Including the correct header that declares the function.
>>>
>>
>> Thanks for the reply. I have no intention whatsoever in making any
>> changes to the code structure. There's a big difference between the
>> possibility of being an ABI mismatch and actually being one.
> 
> May all your warnings be free of bugs.  Note: this warning was from a
> `make W=1` build.
> --
> Thanks,
> ~Nick Desaulniers
> 

That's not the wish I was hoping for, but rather 'may all your warnings 
be relevant'.

Cheers,
-Vladimir

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/VI1PR04MB5696D5102C398E4858713CA1E0B00%40VI1PR04MB5696.eurprd04.prod.outlook.com.
