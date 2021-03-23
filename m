Return-Path: <clang-built-linux+bncBAABBCMD5GBAMGQENQSMCRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D284346907
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 20:29:14 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id b136sf2714505qkc.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 12:29:14 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1616527753; cv=pass;
        d=google.com; s=arc-20160816;
        b=AC2UhocHHKedprPE1h8Up7wzmtmIoBboprVToc5bG/ZYQUQQuuWE9TYRAovWYBX/Dc
         cLGUss29LUzAmYxfbn/5knBnxrX0/jxyat4hUARJfbrLSeEXhWkvLsapJWzqMyPLEL3G
         v5U8NrJmPUaWzPLlp9fx9I9zMlLuLRMX9aqTVqUZq0KjKHUNb1/8WUTsmFIRf2chDT2h
         1pTFVirrdegqrJPe/MFUXL+RWipYTO8aZlLF923OCAYvk24QapJTblXdV1l/9aw3laIU
         qkCV5zvel+YbA6F9C/dw56d4NHCo4ZvLiRl7ZYWTc+4QLzf3vKvrNKHUAlBkG4pj55gX
         DkzA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:content-transfer-encoding:in-reply-to:user-agent
         :date:message-id:subject:from:references:cc:to:ironport-hdrordr
         :ironport-sdr:dkim-signature;
        bh=Il5qeEUJ9RuIlNyZzdmteVMjFochzDHlRHpvbwUKqMU=;
        b=v3QrWV2BeI2kuq6JtLCfXCMEC2Kjg0rVZTSLw95PRg3QaOnD0x8qTDhP82kaak0aR/
         nx66mxPf2cs1898iQwIkAbIF1j/wtJx8WrzT2QnEpF2zYadH87XiKNLBdAlDcLqF8Xrv
         SFcHACxnrDwjro0AxHryC87R3ev7lHmFfyVK1NQk3s+sgY6Gh+/K/n6BozN8XqldnMsz
         YH23XqirMFCyW8FnED+2jJ43Id5NxS4dbf+cMoIwv7ymT8tMb24JLL73Et+2jnQ6aGMr
         kNBhMMkrTtSS0PL9AKBITjpTu5Q/tMFhqONPbhsVMa0GttXQmeB7wM5HG9/9WeC2XRw7
         skVg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=ZcNJ1pbz;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=BRXoRTj9;
       arc=pass (i=1 spf=pass spfdomain=citrix.com dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.153 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:ironport-hdrordr:to:cc:references:from:subject
         :message-id:date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Il5qeEUJ9RuIlNyZzdmteVMjFochzDHlRHpvbwUKqMU=;
        b=enJy9wdIV+RkM7PjLPGgLIoNp3jk7lAbGvQSOOZLndo6hktpgYXkKfl3UbWG8/Qj9k
         kdalxLlz2F9jFabLiDo7z4DwqSCbaBBw8o5MedzJT3khQjeei108QwfDGjc3IgDrK+kU
         B3MCyBd9H85ZSInrACTuHfZs8B+/rnrwdfIz8ydLHTqeL8LbkPpIgjD6jp79W/FZZfgk
         g6y+5nYfKjEHqlFhmYQbtVqynoB8Q55LfGTCTQNYlB4WFwf6FWVihl+yE7XkBSaN35EX
         yoNoZ3AzzbiEUcOvxoi73tvTjRh3vQyMU568juKGhFUYgOuVNAs+3lSun0pVhj+Uw/Ii
         kVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:ironport-hdrordr:to:cc:references
         :from:subject:message-id:date:user-agent:in-reply-to
         :content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Il5qeEUJ9RuIlNyZzdmteVMjFochzDHlRHpvbwUKqMU=;
        b=U3ckZ9LC20WehB2ckNLbGRg4YypwUx3Dw8h5M2vgZ3P7NHkpexwEEPl8WMkYZhUETT
         /afouoODxnspRdmftscWLLXKItcH8RCNX08WwJNh9JO8rKeBbqT4UjnOXlhIc5JS5I74
         9rw9gFsYPIL83VAr/y9iAHLobZRYv1XqT8gIp/2dmETMqO3D/6xTnQwtRGOOXxjq9sMJ
         Jvd2PHnXDRV3qZ9WI1dkSnOUZtrEkF3wd5RhwgmRymPlMM8yOQO8iKeNcRRG5s+pqng5
         Q/9T9LYrHyWuglsEZXoe/2V2n6OlLEmBoLeyPJOAUBBYL9Dbjq9ntV1A0o5k9g13W9zl
         aUTQ==
X-Gm-Message-State: AOAM533BBaBdOmVE7bbzUE8nYx0ee9voQa45nXCsxk6Istsf1CZPQeBN
	zWRGO3UGoNtqkrHoYYJ3GZA=
X-Google-Smtp-Source: ABdhPJxBbH2JEczlVtC1clOltyqAzSnQfY7u4Y9jxjDUxpZD+LwKTnIPuj1KVrMVPY1zNng5pYtOeg==
X-Received: by 2002:a37:6592:: with SMTP id z140mr7215161qkb.464.1616527753241;
        Tue, 23 Mar 2021 12:29:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2f03:: with SMTP id l3ls6541757qtd.4.gmail; Tue, 23 Mar
 2021 12:29:12 -0700 (PDT)
X-Received: by 2002:ac8:7611:: with SMTP id t17mr5640966qtq.361.1616527752853;
        Tue, 23 Mar 2021 12:29:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616527752; cv=pass;
        d=google.com; s=arc-20160816;
        b=z3xWpsv6eQxVKPNcSXQAhTolw2QNCuQkSHYQyZaGKpByLM45ZPg1F2G4O5O56OPJfN
         9D7FSte1q83nteYKvJhinRWJjjKLt0gTSrCh0+8TY2mMXEyA0i5YGijG93fMR0xtl3AP
         dkmLLqlUm2scIadJJvqEu5d96dZrGi9k3A/WwsSWtLa9FB3mftEgWxSPqhE/x5m9HKLY
         /oCjh2kQ7/3PJ+aEwNYzGOhYVFRGW7IMD6prBirThc/Dkl0g1JKIXPLS4Le0x2G8QM1o
         N9SzZsnqEy0qW9bMz3pUt+9K0NJ6UTN66MtBVnEN2AhFm0CM+y/9cqdUWKpJ8EV56MHi
         dNBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:subject:from:references:cc:to
         :dkim-signature:ironport-hdrordr:ironport-sdr:dkim-signature;
        bh=FTJbhpoaAgDVhbj3fcK2sVP4RaV0XPCVHSZoXa81h2g=;
        b=0QIZ7bOofUeJeaMzct4IvyCu0UoQn9v59CASmTEH1gQBIk66cWI8vTG3hEM6KUYN0s
         GuDyo8vZY8JGnLhrHaPJE4SKAX39eeENaCQ8EwGHqjtEaskTJfWeRMg8nDYuerkCQlPF
         c5a/Hm7C81qCKe1Q9BrrgGWfz8sruYJfDaawFA3gqLxE9/RLUZg4ybJD/WjS46LSSfFQ
         OYTmqbtUNZblWiE/RjTz1is34ahlRRE8fIDlAiS8b9aOMuAX10r+WSZEkxkQqROMDbTL
         jg/PbRz7jYsduD8kqEkiJRD5sOKfeKPg+a6yi0i0isPa9dXFeDwp/fnPpLBmkvEihWJa
         YRLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=ZcNJ1pbz;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=BRXoRTj9;
       arc=pass (i=1 spf=pass spfdomain=citrix.com dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.153 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
Received: from esa2.hc3370-68.iphmx.com (esa2.hc3370-68.iphmx.com. [216.71.145.153])
        by gmr-mx.google.com with ESMTPS id b201si1182qkg.6.2021.03.23.12.29.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 12:29:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.153 as permitted sender) client-ip=216.71.145.153;
IronPort-SDR: PooBZ+UrSYmhWQqTKLtgRb7sUEKYuG/n8WV8Wmb/JtAwv0agGXqNn3j4lXtiQVU8tp56r9Vpog
 MBEuMXE42ll6mh5qrx/iOh5bP1Zb4PxYxfIym6jn14w1MB25JHZudkZdycDt7mydQKodl16jlY
 Rpk1Mr/rDZFnUWSBallPh2IrqK58wDhyDRNUqzmvgGBI+gme/spOvEdm2xOsutHP8tX/Tjq2kt
 ol3MdFGM1Rie4hpp/mWeHW9HNDfUGvMcg5KuqHgDnwWfDJTwBEy1tnLGoLH8GpktmFCH4VuhBC
 pP0=
X-SBRS: 5.2
X-MesageID: 39960121
X-Ironport-Server: esa2.hc3370-68.iphmx.com
X-Remote-IP: 162.221.156.83
X-Policy: $RELAYED
IronPort-HdrOrdr: A9a23:PPDytq5XogRXJBsuVwPXwXGEI+orLtY04lQ7vn1ZYSd+NuSFis
 Gjm+ka3xfoiDAXHEotg8yEJbPoex7h3LZPy800Ma25VAfr/FGpIoZr8Jf4z1TbcRHW3tV2kZ
 1te60WMrbNJHBxh8ri/U2cG9Ev3NGI/MmT9Jzj5l1GJDsaCJ1IxQF/FwqdDwlSTA5JGZI2GP
 Onl7B6jhCnfmkaadn+O2kdU4H41pD2vb/FQTpDPR4o7wGSkSilgYSXLzG01goTOgk/posK3n
 PCl2XCh5mLk/b+8RPE0n+W0pI+oqqY9vJmJOihzvcYMS/tjAHAXvUsZ5SnsCouqO+irHYG+e
 O8xSsIBMh453PPcmzdm3KEtGfd+Q0j5HP4xViTjWGLm72BeBsBF8FDiYhFGyGpiXYIgdBm3K
 pHm0KfupZHZCmw+BjV2tnSWxlm0nezuHop+NRj6kB3bI12Ut9shL1a2HkQPIYLHSr85oxiOv
 JpFtvg6PFfdk7fR2zFv0F0qebcEEgbL1OjeAwvq8aV2z9ZkDRS1E0D3vESmX8G6dYUV4RE3e
 LZKa5l/Ys+D/M+XOZYPqMsUMG3AmvCTVbnK2SJO2nqE6kBJjbrp4Po5q42oMWnYoYBwpd3uJ
 mpaiIZiUcCP2bVTeGe1pxC9R7ABE+nWy72981Y759l/rLmQr7mNjCCVUAun8Osr+53OLyYZ9
 +DfLZtR9PzJ2rnHohEmyfkXYNJFHUYWMoJ/tY3Mmj+5/7jG8nPjKj2YfzTLL3iHXIPQWXkGE
 YOWzD1OYFF5kCvUXnonQjJVxrWCwjC1KM1NJKf0/kYyYALOIEJmBMSk06F6saCLiAHtLc3ck
 t4KLbuibi6umGy4GbN4wxSS1lgJ3cQxI+lf2JBpAcMPU+xW60Eoc+jdWdb22bCOgVyVNrMEA
 lUp01+/KW+K5D4/1FkN/uXdkahy1cDrnODSJkR3pCZ7cD+Y5UiE9INQ6pqDzjGEBRzhCdnoG
 pOcxU/W0faDz/i4J/VyqA8NaX6TZ1ciB3uCdNIoXjf3H/s2P0Hdz8+ZXqSduK5xSwpXCFZg1
 Vt9bR3usv9pR+fbU0lgOo5N1VQbn+wG7wuNnXLWKxdhq3rdAZsTW2DmDydjFUpdnD38lgJ71
 aRUxG8ZevGGR5UtHxez8/RgSxJX3TYcERqZn9gt4phUWzAp3ZoyOeOIrG+ym2LdzI5s6ogGS
 CAZTsZOQV1wd+rkBaThTaZDH0jr69ed9D1HfAmc7vJ3GmqJ5DNnaYaH+VM9JIgMNz1qOcEXa
 aefACSRQmIQ98BykiQpnw/PjNzp2RhmfT02Af95Gz9xWUhG5PpUSBbbqBeJ8vZ43nvRv6O3p
 k8hdUpvfGoOmG0btKd06nYYzNKNxu7mx/9c8g47ZRP+a4ivrp6GJfWFSHF03xKxx0yJsb5nk
 F2etUM3JnRfot0O8ACcSNQ+VQk0MmVJEwwqwrsH6swe0oug3KzBaL935PY7b40RkuPqwv7NQ
 PBr2lT//LZUzCC0rBfAaQqOmhSYFU97nMn/O7qTfyiNCy6M+VYuFy9OTuhdbUYTq6PE7AZtA
 x77NGFhPX/TVuO5CnA+T9gZrtT+GOmS96oCA2CGeRU48W3UG788peC8Yq2lnPrUjO1ZEQTmJ
 1deUERZspFjCM+jIdf6FnBdoXn5kQ/k1Vf5jl7llninoi+iV2rbH17DQ==
X-IronPort-AV: E=Sophos;i="5.81,272,1610427600"; 
   d="scan'208";a="39960121"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nZRFqKmccPkkvR6Ffkqb1h6jq7kKcaZTbDmcs093L3ToHJDpgSMKJ0ADi+40//ruyCoOQDsmvMm+Rqp+caMdTdbjO9IdPsC5IuYnO69ZR3SqSxx9lF+F829MncSs+wc36g4G+IZ7NIrGOCcBXcnK25g+llrJAdpx/X7FZYyZ0UisC9TDdTzx4aTGO2CEWvyNh74NsyApZuod3OldGOrpFiXdwVNKFnuqPex8qGZfwOFIAUo47W81bU9rnls8Rtj0lf7fSP384YddVC8jWNH7Ay5/p+O6xaJB3KBZyZY6RUT86XDbLCokqnq1lgKP9RceCPwyG8LS2oBtMBj+/Ue0nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FTJbhpoaAgDVhbj3fcK2sVP4RaV0XPCVHSZoXa81h2g=;
 b=R0HONOaNx1PZ56k1f0detug82xI8m5DFfo38rBX+P3EaBQoiCRXVHrOxw67VXzg+sD9t78zqJ0xa+BKe/eGLeTAhtoLDLRrcWeJSFcLalnWn4GVkJtNVsNhAYydKMvICzFWT9pvB3rdfHA+hZtEihg7T48RKywdPLPNAV3+VXhxbmdXqUsWa9kDBGdDyO8FuWeEvAkDiK+stH/1V0VFDxub74K9zVCLm0410S2QkjaV1l4JleDqnBjFYGmFB7AQ3wWpP5J+O36WsuLchngFGVB9c5PYKQY8gdeEuQNKmF/hpjzezJzhMlVPLlb1ZED2PTyinlb4oqTUdZgCw/kOa3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
To: Peter Zijlstra <peterz@infradead.org>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: <linux-toolchains@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>, Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>, Christian Brauner
	<christian.brauner@canonical.com>, <nick.alcock@oracle.com>, Segher
 Boessenkool <segher@kernel.crashing.org>, Josh Poimboeuf
	<jpoimboe@redhat.com>, Will Deacon <will@kernel.org>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
From: "'Andrew Cooper' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Subject: Re: Plumbers CF MCs
Message-ID: <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
Date: Tue, 23 Mar 2021 19:29:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
X-ClientProxiedBy: LNXP265CA0004.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::16) To BN7PR03MB3618.namprd03.prod.outlook.com
 (2603:10b6:406:c3::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 61cc815c-5317-4d24-e9da-08d8ee31ed78
X-MS-TrafficTypeDiagnostic: BN3PR03MB2371:
X-Microsoft-Antispam-PRVS: <BN3PR03MB2371C8A0694AB86DC3D829ADBA649@BN3PR03MB2371.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: amUpP+4wHG/udad/C7z9WLpO/AwxOe4pwm4LEstPyIBIwiT5aTCjKQ0Fxo0KgiuA1COt00KDykzrxruD7T+1ghJgm1VSowK3gomPEsD+BQgeNiE4KV5CY9e49eSNdt0EpOY18aETbTwIHIT1DI5Jr+e9o224AGEQVvEV6XUe9rxMYxrbZEnSpzLnp7A7190Mmucy182CwTdV0ES4D7JQggRB2wzZ1oE55Sg1Rd8gZYnO5LCxNVdMn8HSmWi3e1beoiyM/VgsVTf5TyL39PMUPXgs4qFFD3BSV3Fx6/kcOljmS4iRe/S7vIUlQpitlrnAV6CJfFC5LyrcTrBV3Y8kChBwBU8XwMTaO+QU6gMJ9TR/lNsnAIweod5RSWW6XCUx2Kn3+AooxdcgtL5m7O4/t/+7w+ciMrDZPYqVpOYpbxm5Lah5LcNlKpQMpi/cc8PcakzQ7AHjyYd7JpwKDvqIeJZHZL9NVwIDWdV/80O62b+QFqS5fn1YiznOGeUhc3OTERZGdu2OYwb+V2F7nxKq9pR0zLX12b1Z9f86XMP1M4AL95ZLZ/UUA8hP7Vr4dCPynM8RGYlWsp+Hema8IgvCiIL4o8VO9eNOp4HTptzFtvq8a6P/GlMY49lUX2oRBH26i+9OVb6i9IfrfivfpuqxNvBpWFKL0V2KcbW6yQJa0p1DQV7FLdvHqfRzjgf7I88EXJMpEbcvNVZUVnA4FSbhnIGI3V+rzOD8u6dOv+pTBBI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR03MB3618.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(39850400004)(396003)(376002)(4744005)(6666004)(38100700001)(53546011)(8936002)(5660300002)(36756003)(2906002)(6486002)(66476007)(66556008)(8676002)(2616005)(110136005)(26005)(7416002)(66946007)(16576012)(83380400001)(186003)(478600001)(956004)(16526019)(54906003)(31686004)(31696002)(86362001)(316002)(3480700007)(4326008)(7116003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?V2lsQjNaVXJ0ZXhvMW4xU0d3Nm5kRjRtcWw5dnBzMCtCa0c5RXlEczl1RWxJ?=
 =?utf-8?B?NTIwcHplcFhpaytSTmNJZ2JvVU5ZSVpiUWlvTVJvZVZEQy9Xa0xlZDhLNlll?=
 =?utf-8?B?eGVBYkRtV0ovN25oS2hSODBFK3BTbnBldTRNWWVuQUN3K2ZSTVJYZUFkMEM5?=
 =?utf-8?B?cjMxdytOMmtValFEVE81ai9qYmZsOVZ1YU5SWVQ2bnV6TkdQaGxNL3RlcDFu?=
 =?utf-8?B?b1pyVFZxd1NIOGFGVG94OFBLanBrelZUUk5HM3QrbGlUN2Z5SFBlMXNtMzRD?=
 =?utf-8?B?VHFaaFVEakFHRldtNm5oblNmdVRGN3liRy9MQkJmNmpnd2pqd0MxQXc0R0Ey?=
 =?utf-8?B?TG1SODE3ejdQT015bFRFakc2T3dVaU9FWjFuL3JSWU1pSEo5b1NNMVc3V0xy?=
 =?utf-8?B?TFdVZElqRkMzQTkzc1puWDFDY3ZNckJkNVBxQmpVaVhGK3Z2QUV0M0hua21L?=
 =?utf-8?B?R0xzNVVUSGRGQU1kMGM2THN1aEpLellDRjJvSk81MnpBQ0dzU1FSNUZ2QVRX?=
 =?utf-8?B?Y05ZVDFzNFgzZm9hQlg4ckpiUU1MTW5NWDZ2QVZ6V0E4aXVPNzZ2TU1icE5R?=
 =?utf-8?B?Yk93ZlpzYWxJZ0d1bDB5ekFOMElqcW5pNjZnYWovdVlBL3lEcFdSSUZLUmsv?=
 =?utf-8?B?TW96a0dmSHBXaG5kQ2kvRXUrUXdtaDUzZkIzYXJQRnhXalp1bUhWVVJyZXhV?=
 =?utf-8?B?SnRTNzRqZGV3WWR5aXZqU0dWZEVYZklZTG5SQndZK2NMVUJ4SWdMSXZrZGpI?=
 =?utf-8?B?dkI3WVdaNkhWTnBNZHhaOHVDeDBCcXluYVBMbWdvUXpMeGtaTnEzSmJRVDVU?=
 =?utf-8?B?RHQ2S0ZJOTlaRGJkWE1tVE5SWG1jTDl4S3dVdm9yYXp5QWNkU1U1VW1GNUR2?=
 =?utf-8?B?d0FqRjk1a3RQNVBGSEsvcW1HUGZYTm4vbXJDaDd1Z1RTa1JUUm9DSHpTbmo5?=
 =?utf-8?B?SmN2L0tnYTZKRFh1bjFVYmI4T2dtKzIrd044dS81ank2NXlQWlAxTUZCeTg2?=
 =?utf-8?B?a0VmYXNYS3NvY29nd1JPTXFmUjFzVy9FcXYreWozc3dwOHZmL3pacGd3ZTVy?=
 =?utf-8?B?VDNwdWhTWHhzL3BTbGl0T3JnUi9LT2EwYUNLZVNXbkxhaUNUTUd5MThIYlp6?=
 =?utf-8?B?T3Y2V2JRckxDT2drNmJRcEhhcnFFS3pGVjZ1R1lLYXRJMGh4QkJ2ZWhzSUll?=
 =?utf-8?B?QjE0UVZqdkRDYW9Pbi9DYUlMY3YwNlZXa01ITTQwVTdMOWV6cjd5bjNZZSty?=
 =?utf-8?B?dngyU1MrQnhSLzkvT0EwbTU5Z3NiL0JFc2NiM0cwUmlhT2x4aWZGMGY5VnVN?=
 =?utf-8?B?YzlweURNNDI1VWxSTGVGNFlPTVlJY0kyb09iUXlZVEozanNMK1Z3ejdKbGw2?=
 =?utf-8?B?TFJXSmNwS3dHdjN2NHd3ZzhycXFmWURKcHFLRStGL2YxUHpMbDBMdm05MG1W?=
 =?utf-8?B?SU1pNWVEMGswTGdqaVo2bkdUdGJQU0VSdjdNa2NiUlpSU0FDb1dEaHhuS0Yy?=
 =?utf-8?B?QnREbi9kWGtKNGpDT0hJZWMrUmIzYjdxWWluek9Rd1lqK2F0aWdtYzhqSzZl?=
 =?utf-8?B?WWZDbnlKTXZnTmdvQXh0VndNMUZRY0lRcDdpWVRxeUJvQUd4T2oyWnIyYnRq?=
 =?utf-8?B?MDh0QlN1RWEvQWxrSm1LcXhSd1pkQmxMeFVKL1U3MmhTa2UzcWRmUVNCeE9k?=
 =?utf-8?B?Z1o2YzFIRjMvQ3p5dFFRV3dWRVJ0ZnN6MXhjZTViZjV0Mi8rakFxS2RBejFS?=
 =?utf-8?Q?gVKrDKsS+5K5XTcK1QJE9hM93y8qYG3BnUI/xwR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61cc815c-5317-4d24-e9da-08d8ee31ed78
X-MS-Exchange-CrossTenant-AuthSource: BN7PR03MB3618.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 19:29:07.9586
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I6/1q48KEASVFEwv46zopmW6YcqgGg14ZhOV1L9C0QcjJlMr7Md9aDfhviN5evza73Z7zOVax9xp7vAsygkFtLdT/DZwm0L20A+PjD0hiDs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB2371
X-OriginatorOrg: citrix.com
X-Original-Sender: andrew.cooper3@citrix.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@citrix.com header.s=securemail header.b=ZcNJ1pbz;       dkim=pass
 header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com
 header.b=BRXoRTj9;       arc=pass (i=1 spf=pass spfdomain=citrix.com
 dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates
 216.71.145.153 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
X-Original-From: Andrew Cooper <andrew.cooper3@citrix.com>
Reply-To: Andrew Cooper <andrew.cooper3@citrix.com>
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

On 23/03/2021 08:35, Peter Zijlstra wrote:
> There also is talk about straight line speculation mitigations. for x86
> we should probably emit an INT3 after every JMP and RET. Although this
> might not be controversial and be sorted by the time Plumbers happens.

I guess this one is levied at me.

Hopefully it isn't controversial in any way.=C2=A0 I have just had sufficie=
nt
tuits to get around to making an x86 straight line speculation feature
request to the GCC and Clang communities yet.

For the compiler folk here, the tl;dr is that indirect CALL/JMP (i.e.
function pointers, jump tables) and RET instructions may speculatively
execute the next sequential instruction(s) before taking the control
flow change into account.=C2=A0 Having some toolchain support to deal with
this would be great, and preferable to some of the asm hackary currently
under suggestion.

~Andrew

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a60f83d2-75da-d147-ae92-47a5b474e162%40citrix.com.
