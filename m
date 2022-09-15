Return-Path: <clang-built-linux+bncBC6JDS6O6ACBBRWRRKMQMGQE6J4UMAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id C99155B937F
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Sep 2022 06:23:35 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id q5-20020a2e84c5000000b0025ec9ff93c8sf5038825ljh.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Sep 2022 21:23:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663215815; cv=pass;
        d=google.com; s=arc-20160816;
        b=JDOKeVcNXjG/Mghe6RgJJBf3rNPqTqgr9Wuju5cd2AurJtj5drG+1aWAiI34xpYyuF
         e4eEJbcqF/qIJKe4F4Xo3YLXFZoiOL5ggwKOpu9/n8DM9k4ih3CGXEGTIfTYM6efKEZe
         4zfZ58h53hqUr+M2JKlgoBG2TQfsZDLrABQuc1z2QykzQu4vLvQ6ztnm5IdCio21nx+v
         QIg9VuV0rQpkEv0xht7zNju/LU4YGhPVKwYz3tT/pksKxTwF92f2vN1heZTIqQF9nKZ7
         F06a1VqqbJtjKgnxxZfpZwoM5x7pzyH8JsIQTLXirpDT+dOsSJDdxlMjXTwef8r4Kjse
         U42g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Wt7nZBHm5gzf62b9/Dyj0XHNV/djb/TMnm7+jw+EF64=;
        b=z4CO4OdSLu7elR5+KmjfWzk+36IuG7MKDLtZfrecOiCkZd30ITLWNgZM5GuM2wYaDM
         RO/28NbefbQh+AKh1tlqbkLVCagdpEdPuyAqypgBbVR4lTbklXyUDizcn0+PAtoSN18y
         kPH4jxkZxwGehNoqISNEOTSFssBqf1HoksnphS2OtZWUYjcPStDN2nmkgIW7snMK0Q/4
         2FMm3ZruRvD8tFPm/Jw2ZzMEyeZNNJKPcIVlvTp+7ABSHrvc9EVMESwazFLlEKbJs/Bk
         rAM5gxp2OFM1rl/gjvawMupFC7a5uyDznXMQ2jyNR46oK0OFP0oWusmjtKBDfOgNcfXV
         pGaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dcDc5H2i;
       spf=pass (google.com: domain of nadazaki149@gmail.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=nadazaki149@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=Wt7nZBHm5gzf62b9/Dyj0XHNV/djb/TMnm7+jw+EF64=;
        b=D4cuQgpyJAIS21OLnDnEeFrbGPvdFv1uk+nRF86AlfogmCuo+XDkGvJsN19wNLik/Q
         Yl0RwfJVGC5cqA00bG1cSLyrvQ0VJmN855dlOBODcrj75hAwK54WiMB2EzhvkdCSzSSE
         ADmPxAne4re34w19zrQhSXKmHpps7Lnp3wX0s07PS3/sUoaBAoP4AtjjZpB0rTccSs38
         K5z1UhY4w7PJx5jkfCTybSN2YqH0l3pQpHKnhmbiQ8CwOJDEfQYdzDUyKnqsxb4k2Hwq
         /ZuPHFVxJhcvsk1fgcDglVJA0hmvY7dEjOceil7ewVBr/TXuZioAQzK5j6EPlaMp2E+9
         YA5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date;
        bh=Wt7nZBHm5gzf62b9/Dyj0XHNV/djb/TMnm7+jw+EF64=;
        b=oLOokfTJtRuXdT/BNfHaxEnXn2oyQ2ztSwkCmxcKspni4Kud6C2pxuaw9NXmEbRsgq
         U2GbC6CuKIWK4dFs9Qok9mY8ES9EZHAMC919BXa/H6LRuK4zUWymv2YTQU1QyMz/v124
         +G2PERVaGZDlluKZ+nAZ3mVLHZR83L4Vh8zcnKm/m5ftoLpGT722mgm0gDijdOzEmaXp
         YJEvDkbawS6gzvY/7bVXVpgPBbUe1g6M1L7Ko6NzMjfxfe8w+r6blIPjx1rIlisU5/ty
         JaD/+oG8lZpvF7dfh9U+EaJjOe6GccnT18d9J6at/27jXlLBiMJBeBam52KzmjKyZBC2
         Gisg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=Wt7nZBHm5gzf62b9/Dyj0XHNV/djb/TMnm7+jw+EF64=;
        b=3h7sVRP/tlUNA64LuZncCnls8LpVcnrFtcNEVP4Eq6eeVGIQYgXThWMqU7YyRZsPxF
         B7vBBmpB4dn37fCh/ziAmFqO2QXFqnEKbFecoXPL7teW8qQJukcgeAzHYOUzWzuskLyN
         CWM580fsQ+4MrXetqOdfVGhjr/gCDJJmL1tm5Q5n1O1Y0TdRxBGF3xvz+JJadguYx5iV
         guQ2Ejt5TvGfXBjCQNvet/HJNZYocZU6tFrVxlHAx1/4Ut/RNOACLZbHt8H/+W5Mhoxe
         2FKpIZjc52oFFWgTVkx1G3omSnALLi5TtNbllhFeIe7PJVIFyTv47C9o2RlPxEiqP7gD
         7yaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo0SKvS23WESkzHepU5Yh6q76eVSiZ7ll2/NstzoAOS5Qbup3YPM
	IOjFf+n1sZGiP42QNENTA/A=
X-Google-Smtp-Source: AA6agR7/xA6jF8LDXJhzdcbpxHfQbl3T6QN8KaWzQMtjvjvIHeX5V4pvJwIfI6An2xwB8eBYA61h6Q==
X-Received: by 2002:a05:6512:1399:b0:486:2ae5:be71 with SMTP id p25-20020a056512139900b004862ae5be71mr12298009lfa.246.1663215814945;
        Wed, 14 Sep 2022 21:23:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e24:0:b0:49a:b814:856d with SMTP id o4-20020ac25e24000000b0049ab814856dls114100lfg.1.-pod-prod-gmail;
 Wed, 14 Sep 2022 21:23:33 -0700 (PDT)
X-Received: by 2002:a05:6512:1188:b0:499:6fbf:d751 with SMTP id g8-20020a056512118800b004996fbfd751mr8775267lfr.51.1663215813733;
        Wed, 14 Sep 2022 21:23:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663215813; cv=none;
        d=google.com; s=arc-20160816;
        b=TmOqGpWxj5nT264wottDgRpd7Y+TBve9rSLMUiTOiiLNcHighVdrABNLn6X0tVC+J5
         O3zcT5H9bP8+jNlFz6vHMHVin/QHW58FnaBHfY34UJ0mrGu0A5BswEFzGHJ0WmjFLYYS
         CSmTMUvhCO61y+DWowre8RD2wCnILRREnqugQfN7pljuh7LllhQAzYKZNQvtYvDHODty
         +Vxa+Zc8yGYpN/zRMwPerHEa77/izsI45MAMtcz9Zt+ygvL205kFSkyRM9j58Ix0/Fc9
         D8xJF8KsYZjpE9aHUOM7EHDjo3NwxL/RWIY6xil3d7lSpEp2g12NsKMoy3pgvbvwF+Kk
         X8Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=rDjoq1I39sooC/4hF2KYrsPRrVGGIwDCtgcfLKM1WC0=;
        b=n8DXSsJVjdWZNyZ9mTb06IwhYpzcERRgirB6bkvSgKXzmqzDHGCNZiuw52lma2PEsH
         4rQrjUhN9WR5rBm9PqubzTFVfy19HebhWMeQyj4AknpSmkE0L1TVJJeqf/Rzn64JR+6S
         BauoSjAvYMTZgIzzLDtBtLXNcHTn2h1pS1i8QCHF1YFyaF2PiAcpGhG+D8TvHBpRIG4K
         jWxciWzXzXtJk5MCAyQ14gOPlIw4D8Mnp7iK04Zk49Hzw0zYjHXRsBbExJc4MSQWwIUd
         Ml/ONAksryCZeAXfLKvXVB4qdLePpKBXwzsdvQUCCYnqVHvpZcV1jYxj61AFfzeVvcpi
         gqvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dcDc5H2i;
       spf=pass (google.com: domain of nadazaki149@gmail.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=nadazaki149@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id z13-20020a056512370d00b00498fd423cbdsi451782lfr.7.2022.09.14.21.23.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Sep 2022 21:23:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nadazaki149@gmail.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id f9so27699535lfr.3
        for <clang-built-linux@googlegroups.com>; Wed, 14 Sep 2022 21:23:33 -0700 (PDT)
X-Received: by 2002:ac2:5097:0:b0:498:f5b9:7a6f with SMTP id
 f23-20020ac25097000000b00498f5b97a6fmr10122200lfm.640.1663215812718; Wed, 14
 Sep 2022 21:23:32 -0700 (PDT)
MIME-Version: 1.0
From: nada zaki149 <nadazaki149@gmail.com>
Date: Thu, 15 Sep 2022 06:22:00 +0200
Message-ID: <CAPwB3jg6gnOV9WBDUi0C8NdUSL9=zTLJHL6op1beJs1UQ8c7Nw@mail.gmail.com>
Subject: =?UTF-8?B?2YTZhNmF2LnZhNmI2YXYp9iqINit2YjZhCDYp9mE2K/YqNmE2YjZhSDYp9mE2KrYr9ix?=
	=?UTF-8?B?2YrYqNmKINix2YrYp9iv2Kkg2KfZhNin2LnZhdin2YQg2YXZhiAxOCDigJMgMjIg2LPYqNiq2YXYqNix?=
	=?UTF-8?B?IDIwMjIg2YUg2LHYp9iz2YTZhtinINmI2KfYqtizINin2KggMDAyMDEwNjI5OTI1MTAg2KfZhNiv2Kg=?=
	=?UTF-8?B?2YTZiNmFINin2YTYqtiv2LHZitio2Yog2LHZitin2K/YqSDYp9mE2KfYudmF2KfZhCDZhdmGIDE4IA==?=
	=?UTF-8?B?4oCTIDIyINiz2KjYqtmF2KjYsSAyMDIyINmFINmI2KfZhNmF2LnYqtmF2K8g2YXZhiDYp9mE2K/Yp9ix?=
	=?UTF-8?B?INin2YTYudix2KjZitipINmE2YTYqtmG2YXZitipINin2YTYp9iv2KfYsdmK2Kkg2KfZhNmC2KfYudip?=
	=?UTF-8?B?INin2YTYp9mB2KrYsdin2LbZitipINiy2YjZiNmI2YjZhSAvINin2YTZgtin2YfYsdipIOKAkyDYrNmF?=
	=?UTF-8?B?2YfZiNix2YrYqSDZhdi12LEg2KfZhNi52LHYqNmK2Kkg2YXZgtiv2YXYqTog2YXZhdinINmE2KfYtNmD?=
	=?UTF-8?B?INmB2YrZhyDYp9mGINin2YXYqtmE2KfZg9mDINmE2LnZhdmE2YMg2KfZhNiu2KfYtSDZhdmGINi02KM=?=
	=?UTF-8?B?2YbZhyDYp9mGINmK2YPZiNmGINmF2YHZitivINmE2YMg2Ygg2KzYp9mE2Kgg2YTZhNmD2KvZitixINmF?=
	=?UTF-8?B?2YYg2KfZhNmB2YjYp9im2K8uINi52YTZiiDYp9mE2LHYutmFINmF2YYg2KrZhNmDINin2YTZgdmI2Kc=?=
	=?UTF-8?B?2KbYryDYp9mE2KrZiiDZgtmF2YbYpyDYqNiw2YPYsdmH2Kcg2KXZhNinINij2YbZhyDZitin2KrZiiA=?=
	=?UTF-8?B?2YXYudmH2Kcg2YPYsNmE2YMg2KfZhNi52K/ZitivINmF2YYg2KfZhNmF2LPYpNmI2YTZitin2Kog2Ygg?=
	=?UTF-8?B?2KfZhNiq2Yog2YbYp9iv2LHYpyDZhdinINmG2LbYudmH2Kcg2LnZitmGINin2YTYp9i52KrYqNin2LEg?=
	=?UTF-8?B?2LnZhtiv2YXYpyDZhtmB2YPYsSDZgdmKINin2YbYtNin2KEg2YXYtNix2YjYudmG2Kcg2KfZhNiu2Kc=?=
	=?UTF-8?B?2LUg2KjYp9mE2KXYttin2YHYqSDYpdmE2Ykg2KfZhNmF2LPYpNmI2YTZitipINin2YTYqtmKINiz2Kg=?=
	=?UTF-8?B?2YIg2KPZhiDYsNmD2LHZhtin2YfYpyDYqtmI2KzYryDZg9iw2YTZgyDZhtiz2KjYqQ==?=
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000b3b89f05e8af9b9f"
X-Original-Sender: nadazaki149@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=dcDc5H2i;       spf=pass
 (google.com: domain of nadazaki149@gmail.com designates 2a00:1450:4864:20::12a
 as permitted sender) smtp.mailfrom=nadazaki149@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000b3b89f05e8af9b9f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

KtmE2YTZhdi52YTZiNmF2KfYqiDYrdmI2YQqICogINin2YTYr9io2YTZiNmFINin2YTYqtiv2LHZ
itio2Yog2LHZitin2K/YqSDYp9mE2KfYudmF2KfZhCAg2YXZhiAxOCDigJMgMjIg2LPYqNiq2YXY
qNixIDIwMjINCtmFICDYsdin2LPZhNmG2Kcg2YjYp9iq2LMg2KfYqCAwMDIwMTA2Mjk5MjUxMCoN
Cg0KKtin2YTYr9io2YTZiNmFINin2YTYqtiv2LHZitio2Yog2LHZitin2K/YqSDYp9mE2KfYudmF
2KfZhCoNCg0KKtmF2YYgMTgg4oCTIDIyINiz2KjYqtmF2KjYsSAyMDIyINmFKg0KDQoq2YjYp9mE
2YXYudiq2YXYryDZhdmGINin2YTYr9in2LEg2KfZhNi52LHYqNmK2Kkg2YTZhNiq2YbZhdmK2Kkg
2KfZhNin2K/Yp9ix2YrYqSAqDQoNCirYp9mE2YLYp9i52Kkg2KfZhNin2YHYqtix2KfYttmK2Kkg
2LLZiNmI2YjZiNmFIC8g2KfZhNmC2KfZh9ix2Kkg4oCTINis2YXZh9mI2LHZitipINmF2LXYsSDY
p9mE2LnYsdio2YrYqSoNCg0KKtmF2YLYr9mF2Kk6Kg0KDQoNCirZhdmF2Kcg2YTYp9i02YMg2YHZ
itmHINin2YYg2KfZhdiq2YTYp9mD2YMg2YTYudmF2YTZgyDYp9mE2K7Yp9i1INmF2YYg2LTYo9mG
2Ycg2KfZhiDZitmD2YjZhiDZhdmB2YrYryDZhNmDINmIINis2KfZhNioINmE2YTZg9ir2YrYsQ0K
2YXZhiDYp9mE2YHZiNin2KbYry4g2LnZhNmKINin2YTYsdi62YUg2YXZhiDYqtmE2YMg2KfZhNmB
2YjYp9im2K8g2KfZhNiq2Yog2YLZhdmG2Kcg2KjYsNmD2LHZh9inINil2YTYpyDYo9mG2Ycg2YrY
p9iq2Yog2YXYudmH2KcNCtmD2LDZhNmDINin2YTYudiv2YrYryDZhdmGINin2YTZhdiz2KTZiNmE
2YrYp9iqINmIINin2YTYqtmKINmG2KfYr9ix2Kcg2YXYpyDZhti22LnZh9inINi52YrZhiDYp9mE
2KfYudiq2KjYp9ixINi52YbYr9mF2Kcg2YbZgdmD2LEg2YHZig0K2KfZhti02KfYoSDZhdi02LHZ
iNi52YbYpyDYp9mE2K7Yp9i1INio2KfZhNil2LbYp9mB2Kkg2KXZhNmJINin2YTZhdiz2KTZiNmE
2YrYqSDYp9mE2KrZiiDYs9io2YIg2KPZhiDYsNmD2LHZhtin2YfYpyDYqtmI2KzYryDZg9iw2YTZ
gw0K2YbYs9io2Kkg2YXZhiDYp9mE2YXYrtin2LfYsdipLCDYp9mE2KrYrti32YrYtyDZiCDYp9mE
2YXYrNmH2YjYryDZiCDYutmK2LHZh9inINmF2YYg2LnZiNin2YXZhCDYp9mE2YbYrNin2K0g2YrY
rNioINij2YYg2KrYudiq2KjYsdmH2KcNCtmI2KrYrdix2LUg2LnZhNmJINin2YTYqtit2YTZiiDY
qNmH2KcgINi52YbYr9mF2Kcg2KrZhti02KYg2YXYtNix2YjYudmDINin2YTYrtin2LUuINmF2YYg
2K3Ys9mGINit2Lgg2YfYpNmE2KfYoSDYp9mE2LDZitmGINmK2LPYudmI2YYNCtmE2KrYrdmC2YrZ
giDYrdmE2YXZh9mFINio2KfZhdiq2YTYp9mDINi52YXZhNmH2YUg2KfZhNiu2KfYtSDZiCDYp9mE
2LnZhdmEINmE2K3Ys9in2Kgg2KfZhtmB2LPZh9mFINin2YbZhyDYqtiq2YjYp9mB2LEg2KfZhNi5
2K/ZitivINmF2YYNCtin2YTZg9mI2LHYs9in2Kog2Ygg2KfZhNiv2LHYrNin2Kog2KfZhNiq2LnZ
hNmK2YXZitipINmIINin2YTZhdmH2YbZitipINi02YfYp9iv2Kkg2KfZhNmF2KfYrNiz2KrZitix
INmB2Yog2KXYr9in2LHYqSDYp9mE2KPYudmF2KfZhCDZiA0K2K/Zg9iq2YjYsdin2Kkg2KfYr9in
2LHYqSDYp9mE2KfYudmF2KfZhCoNCg0KKtmK2YfYr9mBICoq2KfZhNmJIDogKg0KDQoq2KXYudiv
2KfYryDYp9mE2K/Yp9ix2LPZitmGINmI2KrYstmI2YrYr9mH2YUg2KjYp9mE2YXZh9in2LHYp9iq
INmI2KfZhNmF2LnYp9ix2YEg2KfZhNmE2KfYstmF2Kkg2YTZh9mFINmD2YLYp9iv2Kkg2LHZitin
2K/YqSDYp9mE2KPYudmF2KfZhA0K2LbZhdmGINin2YTYp9mC2KrYtdin2K8g2KfZhNi52KfZhNmF
2YouINil2LAg2LPZitiq2LPZhtmJINmE2YTYr9in2LHYs9mK2YYg2KrZgtmK2YrZhSDZiNin2LPY
qtmD2LTYp9mBINmI2YbZgtivINmI2KfZhNin2K3YqtmB2KfYoQ0K2KjYuNin2YfYsdipINin2YTZ
gtmK2KfYr9ipINmI2LHZitin2K/YqSDYp9mE2YXYtNin2LHZiti5INin2YTYtdi62YrYsdipINmI
2KfZhNmD2KjZitix2Kkg2YHZiiDZhdik2LPYs9in2Kog2KfZhNmC2LfYp9i52YrZhiDYp9mE2LnY
p9mFDQrZiNin2YTYrtin2LUg2YjYp9mE2YLYt9in2Lkg2KfZhNin2KzYqtmF2KfYudmKINmI2LPZ
iNmBINmK2YPZiNmGINin2YTYqtix2YPZitiyINi52YTZiSDYp9mE2YLZitin2K/YqSDZgdmKINmE
2LnYqCDYp9mE2KPYr9mI2KfYsQ0K2KfZhNix2YrYp9iv2YrYqSDZgdmKINit2YrYp9ipINin2YTZ
htin2LMu2KXYsNinINij2LHYr9iq2YUg2YTZhdit2Kkg2LnZhiDYp9mE2YjYrdiv2KfYqiDYp9mE
2LHYptmK2LPZitipINmI2KfZhNmF2YjYp9ivDQrYp9mE2KfYrtiq2YrYp9ix2YrYqSDYp9mE2KrZ
iiDYs9iq2K/Ysdiz2YjZhtmH2Kcg2YHZiiDZh9iw2Kcg2KfZhNmF2LPYp9mC2Iwg2YrZhdmD2YbZ
g9mFINin2YTYp9i32YTYp9i5INi52YTZiSDYp9mE2K7Yt9ipINin2YTYr9ix2KfYs9mK2KkuKg0K
DQoNCg0KDQoNCirYp9mE2KfZh9iv2KfZgSA6Kg0KDQoqw7wgICAgICAqKtiq2K3Yr9mK2K8g2KfZ
hNiz2YjZgiDYp9mE2YXZhtin2LPYqNipINij2Ygg2KfZhNit2KfYrNin2Kog2KfZhNin2KzYqtmF
2KfYudmK2Kkg2YjYp9mE2KfZgtiq2LXYp9iv2YrYqSDZiNiq2LfZiNmK2LEg2K7Yt9ipDQrYudmF
2YQg2YTYpdmG2LTYp9ihINmI2KrYo9iz2YrYsyDZiNiq2LfZiNmK2LEg2YXYtNix2YjYuSDYsdmK
2KfYr9mKINmC2KfYqNmEINmE2YTYqti32YjYsSDZitmE2KjZiiDZh9iw2Ycg2KfZhNit2KfYrNin
2KoqKi4qDQoNCg0KDQoqw7wgICAgICAqKtiq2LnYstmK2LIg2KfZhNmC2K/Ysdin2Kog2YjYp9mE
2YXYudin2LHZgSDYp9mE2YXZhNin2KbZhdipINmE2KrYrdiz2YrZhiDYp9mE2YXYtNin2LHZiti5
INin2YTYsdmK2KfYr9mK2Kkg2YjYqtit2YLZitmCDQrYp9mE2YbYqtin2KbYrCDYp9mE2YXZhti0
2YjYr9ipINmF2YbZh9inKiouKg0KDQoNCg0KKsO8ICAgICAgKirYp9mE2YXYs9in2LnYr9ipINmB
2Yog2KrYt9mI2YrYsSDYq9mC2KfZgdipINmI2KjZitim2Kkg2K/Yp9iu2YTZitipINiq2KTYr9mK
INil2YTZiSDYqtmC2K/ZitmFINij2YHZg9in2LEg2YXYqNiq2YPYsdipDQrZhNmF2YbYqtis2KfY
qiDZiNiu2K/Zhdin2Kog2KzYr9mK2K/YqSoqLioNCg0KDQoNCirDvCAgICAgICoq2KrYt9mI2YrY
sSDYp9mE2YXYudin2LHZgSDZiNin2YTZhdmH2KfYsdin2Kog2KfZhNi22LHZiNix2YrYqSDZhNmC
2YrYp9iv2Kkg2KfZhNmF2LTYp9ix2YrYuSDYp9mE2LHZitin2K/ZitipKiouKg0KDQoqw7wgICAg
KirYp9mE2KrZiNin2LXZhCDYqNmD2YHYp9ih2Kkg2YjZgdin2LnZhNmK2Kkg2YXYuSDYp9mE2KPY
t9ix2KfZgSDYp9mE2YXYudmG2YrYqSDYp9mE2K7Yp9ix2KzZitipINmI2KfZhNiv2KfYrtmE2YrY
qSDZgdmKDQrYp9mE2YXYtNix2YjYuSDYp9mE2LHZitin2K/ZiioqLioNCg0KDQoNCtmE2KrYo9mD
2YrYryDZhdi02KfYsdmD2KrZg9mFINin2YTYtNmH2KfYr9ipINin2YTZhdiw2YPZiNix2Kkg2KfY
udmE2KfZhyDZitix2KzZiSDYp9mE2KrZiNin2LXZhCDZhdi5INijLyDYs9in2LHYqSDYudio2K8g
2KfZhNis2YjYp9ivIOKAkw0K2KzZiNin2YQgJiDZiNin2KrYsyDYp9ioIDAwMjAxMDYyOTkyNTEw
IC0gMDAyMDEwOTY4NDE2MjYNCg0K2K/ZiNix2KfYqiDYqtiv2LHZitio2YrYqSDZiNmG2K/ZiNin
2Kog2LDYp9iqINi12YTYqToNCg0K2KfYs9iq2LHYp9iq2YrYrNmK2KfYqiDYpdi52KfYr9ipINmH
2YbYr9iz2Kkg2YjYqtit2LPZitmGINi52YXZhNmK2KfYqiDYp9mE2KfYudmF2KfZhA0KDQrYp9mE
2YLZitin2K/YqSDZiNin2YTYqtmB2YPZitixINin2YTZhtmC2K/ZiiDZiNin2YTYpdio2KrZg9in
2LENCg0K2KPYr9mI2KfYqiDZiNmF2YbZh9is2YrYp9iqINin2YTYqtmF2YrYsiDYp9mE2YXYpNiz
2LPZiiDZiNiq2K3Ys9mK2YYg2KfZhNis2YjYr9ipDQoNCtin2YTYqtmB2YPZitixINin2YTYpdio
2K/Yp9i52Yog2YjYp9mE2YLZitin2K/YqSDYp9mE2YHYudin2YTYqQ0KDQrYtdmK2KfYutipINmI
2KrYtdmF2YrZhSDigI/igI/Yp9iz2KrYsdin2KrZitis2YrYqSDYp9mE2KfYs9iq2K/Yp9mF2Kkg
2KfZhNmF2LHZhtipINmI2KfZhNix2LTZitmC2KkNCg0KLS0gCllvdSByZWNlaXZlZCB0aGlzIG1l
c3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgIkNs
YW5nIEJ1aWx0IExpbnV4IiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFu
ZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBjbGFuZy1i
dWlsdC1saW51eCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlz
Y3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dp
ZC9jbGFuZy1idWlsdC1saW51eC9DQVB3QjNqZzZnbk9WOVdCRFVpMEM4TmRVU0w5JTNEelRMSkhM
Nm9wMWJlSnMxVVE4YzdOdyU0MG1haWwuZ21haWwuY29tLgo=
--000000000000b3b89f05e8af9b9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=
=3D"text-align:center;margin:0in 0in 0.0001pt;direction:rtl;unicode-bidi:em=
bed;font-size:12pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot=
;"><b><span lang=3D"AR-EG" style=3D"font-family:Arial,&quot;sans-serif&quot=
;;color:black;background-image:initial;background-position:initial;backgrou=
nd-size:initial;background-repeat:initial;background-origin:initial;backgro=
und-clip:initial">=D9=84=D9=84=D9=85=D8=B9=D9=84=D9=88=D9=85=D8=A7=D8=AA =
=D8=AD=D9=88=D9=84</span></b><b><span lang=3D"AR-EG" style=3D"font-family:A=
rial,&quot;sans-serif&quot;;color:black;background-image:initial;background=
-position:initial;background-size:initial;background-repeat:initial;backgro=
und-origin:initial;background-clip:initial"> </span></b><b><span lang=3D"AR=
-SA" style=3D"font-family:Arial,&quot;sans-serif&quot;;color:black;backgrou=
nd-image:initial;background-position:initial;background-size:initial;backgr=
ound-repeat:initial;background-origin:initial;background-clip:initial">=C2=
=A0=C2=A0=D8=A7=D9=84=D8=AF=D8=A8=D9=84=D9=88=D9=85 =D8=A7=D9=84=D8=AA=D8=
=AF=D8=B1=D9=8A=D8=A8=D9=8A =D8=B1=D9=8A=D8=A7=D8=AF=D8=A9 =D8=A7=D9=84=D8=
=A7=D8=B9=D9=85=D8=A7=D9=84=C2=A0 =D9=85=D9=86 18 =E2=80=93 22 =D8=B3=D8=A8=
=D8=AA=D9=85=D8=A8=D8=B1 2022 =D9=85=C2=A0 =D8=B1=D8=A7=D8=B3=D9=84=D9=86=
=D8=A7 =D9=88=D8=A7=D8=AA=D8=B3 =D8=A7=D8=A8 00201062992510</span></b><b><s=
pan lang=3D"AR-EG" style=3D"font-size:28pt;color:rgb(49,132,155)"></span></=
b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 0.0001pt;direction:rtl;unicode-bidi:embed;font-size:12pt=
;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><b><span lang=
=3D"AR-EG" style=3D"font-size:28pt;color:rgb(49,132,155)">=D8=A7=D9=84=D8=
=AF=D8=A8=D9=84=D9=88=D9=85 =D8=A7=D9=84=D8=AA=D8=AF=D8=B1=D9=8A=D8=A8=D9=
=8A =D8=B1=D9=8A=D8=A7=D8=AF=D8=A9 =D8=A7=D9=84=D8=A7=D8=B9=D9=85=D8=A7=D9=
=84</span></b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 0.0001pt;direction:rtl;unicode-bidi:embed;font-size:12pt=
;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><b><span lang=
=3D"AR-EG" style=3D"font-size:28pt;color:rgb(49,132,155)">=D9=85=D9=86 18 =
=E2=80=93 22 =D8=B3=D8=A8=D8=AA=D9=85=D8=A8=D8=B1 2022 =D9=85</span></b></p=
>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;text-indent:28.35pt;margin:0in 0in 0.0001pt;direction:rtl;unicode-bidi:=
embed;font-size:12pt;font-family:&quot;Times New Roman&quot;,&quot;serif&qu=
ot;"><b><span lang=3D"AR-EG" style=3D"font-size:18pt;font-family:&quot;Simp=
lified Arabic&quot;,&quot;serif&quot;">=D9=88=D8=A7=D9=84=D9=85=D8=B9=D8=AA=
=D9=85=D8=AF =D9=85=D9=86 =D8=A7=D9=84=D8=AF=D8=A7=D8=B1 =D8=A7=D9=84=D8=B9=
=D8=B1=D8=A8=D9=8A=D8=A9 =D9=84=D9=84=D8=AA=D9=86=D9=85=D9=8A=D8=A9 =D8=A7=
=D9=84=D8=A7=D8=AF=D8=A7=D8=B1=D9=8A=D8=A9 </span></b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 0.0001pt;direction:rtl;unicode-bidi:embed;font-size:12pt=
;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><b><span lang=
=3D"AR-EG" style=3D"font-size:20pt;font-family:&quot;Simplified Arabic&quot=
;,&quot;serif&quot;;color:black">=D8=A7=D9=84=D9=82=D8=A7=D8=B9=D8=A9
=D8=A7=D9=84=D8=A7=D9=81=D8=AA=D8=B1=D8=A7=D8=B6=D9=8A=D8=A9 =D8=B2=D9=88=
=D9=88=D9=88=D9=88=D9=85 / =D8=A7=D9=84=D9=82=D8=A7=D9=87=D8=B1=D8=A9 =E2=
=80=93 =D8=AC=D9=85=D9=87=D9=88=D8=B1=D9=8A=D8=A9 =D9=85=D8=B5=D8=B1 =D8=A7=
=D9=84=D8=B9=D8=B1=D8=A8=D9=8A=D8=A9</span></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><b><u><span lang=3D"AR-EG" style=3D"font-size:16pt=
;font-family:&quot;Simplified Arabic&quot;,&quot;serif&quot;;color:red">=D9=
=85=D9=82=D8=AF=D9=85=D8=A9:</span></u></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><b><span dir=3D"LTR" style=3D"font-size:14pt;font-=
family:main-font,&quot;serif&quot;;color:black;background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial"><br>
</span></b><b><span lang=3D"AR-SA" style=3D"font-size:14pt;color:black;back=
ground-image:initial;background-position:initial;background-size:initial;ba=
ckground-repeat:initial;background-origin:initial;background-clip:initial">=
=D9=85=D9=85=D8=A7 =D9=84=D8=A7=D8=B4=D9=83 =D9=81=D9=8A=D9=87 =D8=A7=D9=86=
 =D8=A7=D9=85=D8=AA=D9=84=D8=A7=D9=83=D9=83 =D9=84=D8=B9=D9=85=D9=84=D9=83 =
=D8=A7=D9=84=D8=AE=D8=A7=D8=B5 =D9=85=D9=86 =D8=B4=D8=A3=D9=86=D9=87 =D8=A7=
=D9=86 =D9=8A=D9=83=D9=88=D9=86 =D9=85=D9=81=D9=8A=D8=AF =D9=84=D9=83 =D9=
=88
=D8=AC=D8=A7=D9=84=D8=A8 =D9=84=D9=84=D9=83=D8=AB=D9=8A=D8=B1 =D9=85=D9=86 =
=D8=A7=D9=84=D9=81=D9=88=D8=A7=D8=A6=D8=AF. =D8=B9=D9=84=D9=8A =D8=A7=D9=84=
=D8=B1=D8=BA=D9=85 =D9=85=D9=86 =D8=AA=D9=84=D9=83 =D8=A7=D9=84=D9=81=D9=88=
=D8=A7=D8=A6=D8=AF =D8=A7=D9=84=D8=AA=D9=8A =D9=82=D9=85=D9=86=D8=A7 =D8=A8=
=D8=B0=D9=83=D8=B1=D9=87=D8=A7 =D8=A5=D9=84=D8=A7 =D8=A3=D9=86=D9=87 =D9=8A=
=D8=A7=D8=AA=D9=8A
=D9=85=D8=B9=D9=87=D8=A7 =D9=83=D8=B0=D9=84=D9=83 =D8=A7=D9=84=D8=B9=D8=AF=
=D9=8A=D8=AF =D9=85=D9=86 =D8=A7=D9=84=D9=85=D8=B3=D8=A4=D9=88=D9=84=D9=8A=
=D8=A7=D8=AA =D9=88 =D8=A7=D9=84=D8=AA=D9=8A =D9=86=D8=A7=D8=AF=D8=B1=D8=A7=
 =D9=85=D8=A7 =D9=86=D8=B6=D8=B9=D9=87=D8=A7 =D8=B9=D9=8A=D9=86 =D8=A7=D9=
=84=D8=A7=D8=B9=D8=AA=D8=A8=D8=A7=D8=B1 =D8=B9=D9=86=D8=AF=D9=85=D8=A7 =D9=
=86=D9=81=D9=83=D8=B1 =D9=81=D9=8A
=D8=A7=D9=86=D8=B4=D8=A7=D8=A1 =D9=85=D8=B4=D8=B1=D9=88=D8=B9=D9=86=D8=A7 =
=D8=A7=D9=84=D8=AE=D8=A7=D8=B5 =D8=A8=D8=A7=D9=84=D8=A5=D8=B6=D8=A7=D9=81=
=D8=A9 =D8=A5=D9=84=D9=89 =D8=A7=D9=84=D9=85=D8=B3=D8=A4=D9=88=D9=84=D9=8A=
=D8=A9 =D8=A7=D9=84=D8=AA=D9=8A =D8=B3=D8=A8=D9=82 =D8=A3=D9=86 =D8=B0=D9=
=83=D8=B1=D9=86=D8=A7=D9=87=D8=A7 =D8=AA=D9=88=D8=AC=D8=AF =D9=83=D8=B0=D9=
=84=D9=83 =D9=86=D8=B3=D8=A8=D8=A9 =D9=85=D9=86
=D8=A7=D9=84=D9=85=D8=AE=D8=A7=D8=B7=D8=B1=D8=A9, =D8=A7=D9=84=D8=AA=D8=AE=
=D8=B7=D9=8A=D8=B7 =D9=88 =D8=A7=D9=84=D9=85=D8=AC=D9=87=D9=88=D8=AF =D9=88=
 =D8=BA=D9=8A=D8=B1=D9=87=D8=A7 =D9=85=D9=86 =D8=B9=D9=88=D8=A7=D9=85=D9=84=
 =D8=A7=D9=84=D9=86=D8=AC=D8=A7=D8=AD =D9=8A=D8=AC=D8=A8 =D8=A3=D9=86 =D8=
=AA=D8=B9=D8=AA=D8=A8=D8=B1=D9=87=D8=A7 =D9=88=D8=AA=D8=AD=D8=B1=D8=B5 =D8=
=B9=D9=84=D9=89
=D8=A7=D9=84=D8=AA=D8=AD=D9=84=D9=8A =D8=A8=D9=87=D8=A7=C2=A0 =D8=B9=D9=86=
=D8=AF=D9=85=D8=A7 =D8=AA=D9=86=D8=B4=D8=A6 =D9=85=D8=B4=D8=B1=D9=88=D8=B9=
=D9=83 =D8=A7=D9=84=D8=AE=D8=A7=D8=B5. =D9=85=D9=86 =D8=AD=D8=B3=D9=86 =D8=
=AD=D8=B8 =D9=87=D8=A4=D9=84=D8=A7=D8=A1 =D8=A7=D9=84=D8=B0=D9=8A=D9=86 =D9=
=8A=D8=B3=D8=B9=D9=88=D9=86 =D9=84=D8=AA=D8=AD=D9=82=D9=8A=D9=82
=D8=AD=D9=84=D9=85=D9=87=D9=85 =D8=A8=D8=A7=D9=85=D8=AA=D9=84=D8=A7=D9=83 =
=D8=B9=D9=85=D9=84=D9=87=D9=85 =D8=A7=D9=84=D8=AE=D8=A7=D8=B5 =D9=88 =D8=A7=
=D9=84=D8=B9=D9=85=D9=84 =D9=84=D8=AD=D8=B3=D8=A7=D8=A8 =D8=A7=D9=86=D9=81=
=D8=B3=D9=87=D9=85 =D8=A7=D9=86=D9=87 =D8=AA=D8=AA=D9=88=D8=A7=D9=81=D8=B1 =
=D8=A7=D9=84=D8=B9=D8=AF=D9=8A=D8=AF =D9=85=D9=86 =D8=A7=D9=84=D9=83=D9=88=
=D8=B1=D8=B3=D8=A7=D8=AA =D9=88
=D8=A7=D9=84=D8=AF=D8=B1=D8=AC=D8=A7=D8=AA =D8=A7=D9=84=D8=AA=D8=B9=D9=84=
=D9=8A=D9=85=D9=8A=D8=A9 =D9=88 =D8=A7=D9=84=D9=85=D9=87=D9=86=D9=8A=D8=A9 =
=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D8=A7=D9=84=D9=85=D8=A7=D8=AC=D8=B3=D8=AA=
=D9=8A=D8=B1 =D9=81=D9=8A =D8=A5=D8=AF=D8=A7=D8=B1=D8=A9 =D8=A7=D9=84=D8=A3=
=D8=B9=D9=85=D8=A7=D9=84 =D9=88 =D8=AF=D9=83=D8=AA=D9=88=D8=B1=D8=A7=D8=A9 =
=D8=A7=D8=AF=D8=A7=D8=B1=D8=A9
=D8=A7=D9=84=D8=A7=D8=B9=D9=85=D8=A7=D9=84</span></b><b><span dir=3D"LTR" s=
tyle=3D"font-size:14pt;font-family:main-font,&quot;serif&quot;;color:black;=
background-image:initial;background-position:initial;background-size:initia=
l;background-repeat:initial;background-origin:initial;background-clip:initi=
al"><br>
<br>
</span></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><strong><u><span lang=3D"AR-SA" style=3D"font-size=
:18pt;font-family:Arial,&quot;sans-serif&quot;;color:rgb(192,0,0);backgroun=
d-image:initial;background-position:initial;background-size:initial;backgro=
und-repeat:initial;background-origin:initial;background-clip:initial">=D9=
=8A=D9=87=D8=AF=D9=81 </span></u></strong><strong><u><span lang=3D"AR-EG" s=
tyle=3D"font-size:18pt;font-family:Arial,&quot;sans-serif&quot;;color:rgb(1=
92,0,0);background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial">=D8=A7=D9=84=D9=89 : </span></u></strong></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><strong><span lang=3D"AR-SA" style=3D"font-size:16=
pt;font-family:Arial,&quot;sans-serif&quot;;color:black;background-image:in=
itial;background-position:initial;background-size:initial;background-repeat=
:initial;background-origin:initial;background-clip:initial">=D8=A5=D8=B9=D8=
=AF=D8=A7=D8=AF =D8=A7=D9=84=D8=AF=D8=A7=D8=B1=D8=B3=D9=8A=D9=86 =D9=88=D8=
=AA=D8=B2=D9=88=D9=8A=D8=AF=D9=87=D9=85
=D8=A8=D8=A7=D9=84=D9=85=D9=87=D8=A7=D8=B1=D8=A7=D8=AA =D9=88=D8=A7=D9=84=
=D9=85=D8=B9=D8=A7=D8=B1=D9=81 =D8=A7=D9=84=D9=84=D8=A7=D8=B2=D9=85=D8=A9 =
=D9=84=D9=87=D9=85 =D9=83=D9=82=D8=A7=D8=AF=D8=A9 =D8=B1=D9=8A=D8=A7=D8=AF=
=D8=A9 =D8=A7=D9=84=D8=A3=D8=B9=D9=85=D8=A7=D9=84 =D8=B6=D9=85=D9=86 =D8=A7=
=D9=84=D8=A7=D9=82=D8=AA=D8=B5=D8=A7=D8=AF =D8=A7=D9=84=D8=B9=D8=A7=D9=84=
=D9=85=D9=8A. =D8=A5=D8=B0
=D8=B3=D9=8A=D8=AA=D8=B3=D9=86=D9=89 =D9=84=D9=84=D8=AF=D8=A7=D8=B1=D8=B3=
=D9=8A=D9=86 =D8=AA=D9=82=D9=8A=D9=8A=D9=85 =D9=88=D8=A7=D8=B3=D8=AA=D9=83=
=D8=B4=D8=A7=D9=81 =D9=88=D9=86=D9=82=D8=AF =D9=88=D8=A7=D9=84=D8=A7=D8=AD=
=D8=AA=D9=81=D8=A7=D8=A1 =D8=A8=D8=B8=D8=A7=D9=87=D8=B1=D8=A9 =D8=A7=D9=84=
=D9=82=D9=8A=D8=A7=D8=AF=D8=A9 =D9=88=D8=B1=D9=8A=D8=A7=D8=AF=D8=A9 =D8=A7=
=D9=84=D9=85=D8=B4=D8=A7=D8=B1=D9=8A=D8=B9
=D8=A7=D9=84=D8=B5=D8=BA=D9=8A=D8=B1=D8=A9 =D9=88=D8=A7=D9=84=D9=83=D8=A8=
=D9=8A=D8=B1=D8=A9 =D9=81=D9=8A =D9=85=D8=A4=D8=B3=D8=B3=D8=A7=D8=AA =D8=A7=
=D9=84=D9=82=D8=B7=D8=A7=D8=B9=D9=8A=D9=86 =D8=A7=D9=84=D8=B9=D8=A7=D9=85 =
=D9=88=D8=A7=D9=84=D8=AE=D8=A7=D8=B5 =D9=88=D8=A7=D9=84=D9=82=D8=B7=D8=A7=
=D8=B9 =D8=A7=D9=84=D8=A7=D8=AC=D8=AA=D9=85=D8=A7=D8=B9=D9=8A =D9=88=D8=B3=
=D9=88=D9=81 =D9=8A=D9=83=D9=88=D9=86
=D8=A7=D9=84=D8=AA=D8=B1=D9=83=D9=8A=D8=B2 =D8=B9=D9=84=D9=89 =D8=A7=D9=84=
=D9=82=D9=8A=D8=A7=D8=AF=D8=A9 =D9=81=D9=8A =D9=84=D8=B9=D8=A8 =D8=A7=D9=84=
=D8=A3=D8=AF=D9=88=D8=A7=D8=B1 =D8=A7=D9=84=D8=B1=D9=8A=D8=A7=D8=AF=D9=8A=
=D8=A9 =D9=81=D9=8A =D8=AD=D9=8A=D8=A7=D8=A9 =D8=A7=D9=84=D9=86=D8=A7=D8=B3=
.=D8=A5=D8=B0=D8=A7 =D8=A3=D8=B1=D8=AF=D8=AA=D9=85 =D9=84=D9=85=D8=AD=D8=A9=
 =D8=B9=D9=86
=D8=A7=D9=84=D9=88=D8=AD=D8=AF=D8=A7=D8=AA =D8=A7=D9=84=D8=B1=D8=A6=D9=8A=
=D8=B3=D9=8A=D8=A9 =D9=88=D8=A7=D9=84=D9=85=D9=88=D8=A7=D8=AF =D8=A7=D9=84=
=D8=A7=D8=AE=D8=AA=D9=8A=D8=A7=D8=B1=D9=8A=D8=A9 =D8=A7=D9=84=D8=AA=D9=8A =
=D8=B3=D8=AA=D8=AF=D8=B1=D8=B3=D9=88=D9=86=D9=87=D8=A7 =D9=81=D9=8A =D9=87=
=D8=B0=D8=A7 =D8=A7=D9=84=D9=85=D8=B3=D8=A7=D9=82=D8=8C =D9=8A=D9=85=D9=83=
=D9=86=D9=83=D9=85
=D8=A7=D9=84=D8=A7=D8=B7=D9=84=D8=A7=D8=B9 =D8=B9=D9=84=D9=89 =D8=A7=D9=84=
=D8=AE=D8=B7=D8=A9 =D8=A7=D9=84=D8=AF=D8=B1=D8=A7=D8=B3=D9=8A=D8=A9.</span>=
</strong></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><strong><u><span lang=3D"AR-SA" style=3D"font-size=
:18pt;color:red;background-image:initial;background-position:initial;backgr=
ound-size:initial;background-repeat:initial;background-origin:initial;backg=
round-clip:initial"><span style=3D"text-decoration-line:none">=C2=A0</span>=
</span></u></strong></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><strong><u><span lang=3D"AR-SA" style=3D"font-size=
:18pt;color:red;background-image:initial;background-position:initial;backgr=
ound-size:initial;background-repeat:initial;background-origin:initial;backg=
round-clip:initial"><span style=3D"text-decoration-line:none">=C2=A0</span>=
</span></u></strong></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><strong><u><span lang=3D"AR-SA" style=3D"font-size=
:18pt;color:red;background-image:initial;background-position:initial;backgr=
ound-size:initial;background-repeat:initial;background-origin:initial;backg=
round-clip:initial">=D8=A7=D9=84=D8=A7=D9=87=D8=AF=D8=A7=D9=81 :</span></u>=
</strong></p>

<p class=3D"gmail-MsoListParagraph" dir=3D"RTL" style=3D"margin:0in 0.5in 0=
.0001pt 0in;direction:rtl;unicode-bidi:embed;font-size:12pt;font-family:&qu=
ot;Times New Roman&quot;,&quot;serif&quot;"><b><span style=3D"font-family:W=
ingdings;color:black">=C3=BC<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-weight:normal;font-stretch:normal;font-size=
:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
</span></span></b><span dir=3D"RTL"></span><b><span lang=3D"AR-SA" style=3D=
"font-family:Arial,&quot;sans-serif&quot;;color:black;background-image:init=
ial;background-position:initial;background-size:initial;background-repeat:i=
nitial;background-origin:initial;background-clip:initial">=D8=AA=D8=AD=D8=
=AF=D9=8A=D8=AF =D8=A7=D9=84=D8=B3=D9=88=D9=82 =D8=A7=D9=84=D9=85=D9=86=D8=
=A7=D8=B3=D8=A8=D8=A9 =D8=A3=D9=88 =D8=A7=D9=84=D8=AD=D8=A7=D8=AC=D8=A7=D8=
=AA
=D8=A7=D9=84=D8=A7=D8=AC=D8=AA=D9=85=D8=A7=D8=B9=D9=8A=D8=A9 =D9=88=D8=A7=
=D9=84=D8=A7=D9=82=D8=AA=D8=B5=D8=A7=D8=AF=D9=8A=D8=A9 =D9=88=D8=AA=D8=B7=
=D9=88=D9=8A=D8=B1 =D8=AE=D8=B7=D8=A9 =D8=B9=D9=85=D9=84 =D9=84=D8=A5=D9=86=
=D8=B4=D8=A7=D8=A1 =D9=88=D8=AA=D8=A3=D8=B3=D9=8A=D8=B3 =D9=88=D8=AA=D8=B7=
=D9=88=D9=8A=D8=B1 =D9=85=D8=B4=D8=B1=D9=88=D8=B9 =D8=B1=D9=8A=D8=A7=D8=AF=
=D9=8A =D9=82=D8=A7=D8=A8=D9=84
=D9=84=D9=84=D8=AA=D8=B7=D9=88=D8=B1 =D9=8A=D9=84=D8=A8=D9=8A =D9=87=D8=B0=
=D9=87 =D8=A7=D9=84=D8=AD=D8=A7=D8=AC=D8=A7=D8=AA</span></b><span dir=3D"LT=
R"></span><span dir=3D"LTR"></span><b><span dir=3D"LTR" style=3D"font-famil=
y:Arial,&quot;sans-serif&quot;;color:black;background-image:initial;backgro=
und-position:initial;background-size:initial;background-repeat:initial;back=
ground-origin:initial;background-clip:initial"><span dir=3D"LTR"></span><sp=
an dir=3D"LTR"></span>.</span></b><b><span lang=3D"AR-SA" style=3D"font-fam=
ily:Arial,&quot;sans-serif&quot;;color:black;background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial"></span></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><b><span lang=3D"AR-SA" style=3D"font-family:Arial=
,&quot;sans-serif&quot;;color:black;background-image:initial;background-pos=
ition:initial;background-size:initial;background-repeat:initial;background-=
origin:initial;background-clip:initial">=C2=A0</span></b></p>

<p class=3D"gmail-MsoListParagraph" dir=3D"RTL" style=3D"margin:0in 0.5in 0=
.0001pt 0in;direction:rtl;unicode-bidi:embed;font-size:12pt;font-family:&qu=
ot;Times New Roman&quot;,&quot;serif&quot;"><b><span style=3D"font-family:W=
ingdings;color:black">=C3=BC<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-weight:normal;font-stretch:normal;font-size=
:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
</span></span></b><span dir=3D"RTL"></span><b><span lang=3D"AR-SA" style=3D=
"font-family:Arial,&quot;sans-serif&quot;;color:black;background-image:init=
ial;background-position:initial;background-size:initial;background-repeat:i=
nitial;background-origin:initial;background-clip:initial">=D8=AA=D8=B9=D8=
=B2=D9=8A=D8=B2 =D8=A7=D9=84=D9=82=D8=AF=D8=B1=D8=A7=D8=AA =D9=88=D8=A7=D9=
=84=D9=85=D8=B9=D8=A7=D8=B1=D9=81 =D8=A7=D9=84=D9=85=D9=84=D8=A7=D8=A6=D9=
=85=D8=A9 =D9=84=D8=AA=D8=AD=D8=B3=D9=8A=D9=86
=D8=A7=D9=84=D9=85=D8=B4=D8=A7=D8=B1=D9=8A=D8=B9 =D8=A7=D9=84=D8=B1=D9=8A=
=D8=A7=D8=AF=D9=8A=D8=A9 =D9=88=D8=AA=D8=AD=D9=82=D9=8A=D9=82 =D8=A7=D9=84=
=D9=86=D8=AA=D8=A7=D8=A6=D8=AC =D8=A7=D9=84=D9=85=D9=86=D8=B4=D9=88=D8=AF=
=D8=A9 =D9=85=D9=86=D9=87=D8=A7</span></b><span dir=3D"LTR"></span><span di=
r=3D"LTR"></span><b><span dir=3D"LTR" style=3D"font-family:Arial,&quot;sans=
-serif&quot;;color:black;background-image:initial;background-position:initi=
al;background-size:initial;background-repeat:initial;background-origin:init=
ial;background-clip:initial"><span dir=3D"LTR"></span><span dir=3D"LTR"></s=
pan>.</span></b><b><span lang=3D"AR-SA" style=3D"font-family:Arial,&quot;sa=
ns-serif&quot;;color:black;background-image:initial;background-position:ini=
tial;background-size:initial;background-repeat:initial;background-origin:in=
itial;background-clip:initial"></span></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><strong><u><span lang=3D"AR-SA" style=3D"font-size=
:18pt;font-family:Arial,&quot;sans-serif&quot;;color:black;background-image=
:initial;background-position:initial;background-size:initial;background-rep=
eat:initial;background-origin:initial;background-clip:initial"><span style=
=3D"text-decoration-line:none">=C2=A0</span></span></u></strong></p>

<p class=3D"gmail-MsoListParagraph" dir=3D"RTL" style=3D"margin:0in 0.5in 0=
.0001pt 0in;direction:rtl;unicode-bidi:embed;font-size:12pt;font-family:&qu=
ot;Times New Roman&quot;,&quot;serif&quot;"><b><span style=3D"font-family:W=
ingdings;color:black">=C3=BC<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-weight:normal;font-stretch:normal;font-size=
:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
</span></span></b><span dir=3D"RTL"></span><b><span lang=3D"AR-SA" style=3D=
"font-family:Arial,&quot;sans-serif&quot;;color:black;background-image:init=
ial;background-position:initial;background-size:initial;background-repeat:i=
nitial;background-origin:initial;background-clip:initial">=D8=A7=D9=84=D9=
=85=D8=B3=D8=A7=D8=B9=D8=AF=D8=A9 =D9=81=D9=8A =D8=AA=D8=B7=D9=88=D9=8A=D8=
=B1 =D8=AB=D9=82=D8=A7=D9=81=D8=A9 =D9=88=D8=A8=D9=8A=D8=A6=D8=A9 =D8=AF=D8=
=A7=D8=AE=D9=84=D9=8A=D8=A9
=D8=AA=D8=A4=D8=AF=D9=8A =D8=A5=D9=84=D9=89 =D8=AA=D9=82=D8=AF=D9=8A=D9=85 =
=D8=A3=D9=81=D9=83=D8=A7=D8=B1 =D9=85=D8=A8=D8=AA=D9=83=D8=B1=D8=A9 =D9=84=
=D9=85=D9=86=D8=AA=D8=AC=D8=A7=D8=AA =D9=88=D8=AE=D8=AF=D9=85=D8=A7=D8=AA =
=D8=AC=D8=AF=D9=8A=D8=AF=D8=A9</span></b><span dir=3D"LTR"></span><span dir=
=3D"LTR"></span><b><span dir=3D"LTR" style=3D"font-family:Arial,&quot;sans-=
serif&quot;;color:black;background-image:initial;background-position:initia=
l;background-size:initial;background-repeat:initial;background-origin:initi=
al;background-clip:initial"><span dir=3D"LTR"></span><span dir=3D"LTR"></sp=
an>.</span></b><b><span lang=3D"AR-SA" style=3D"font-family:Arial,&quot;san=
s-serif&quot;;color:black;background-image:initial;background-position:init=
ial;background-size:initial;background-repeat:initial;background-origin:ini=
tial;background-clip:initial"></span></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><b><span lang=3D"AR-SA" style=3D"font-family:Arial=
,&quot;sans-serif&quot;;color:black;background-image:initial;background-pos=
ition:initial;background-size:initial;background-repeat:initial;background-=
origin:initial;background-clip:initial">=C2=A0</span></b></p>

<p class=3D"gmail-MsoListParagraphCxSpFirst" dir=3D"RTL" style=3D"margin:0i=
n 0.5in 0.0001pt 0in;direction:rtl;unicode-bidi:embed;font-size:12pt;font-f=
amily:&quot;Times New Roman&quot;,&quot;serif&quot;"><b><span style=3D"font=
-family:Wingdings;color:black">=C3=BC<span style=3D"font-variant-numeric:no=
rmal;font-variant-east-asian:normal;font-weight:normal;font-stretch:normal;=
font-size:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></b><span dir=3D"RTL"></span><b><span lang=3D"AR-SA" style=3D=
"font-family:Arial,&quot;sans-serif&quot;;color:black;background-image:init=
ial;background-position:initial;background-size:initial;background-repeat:i=
nitial;background-origin:initial;background-clip:initial">=D8=AA=D8=B7=D9=
=88=D9=8A=D8=B1 =D8=A7=D9=84=D9=85=D8=B9=D8=A7=D8=B1=D9=81 =D9=88=D8=A7=D9=
=84=D9=85=D9=87=D8=A7=D8=B1=D8=A7=D8=AA =D8=A7=D9=84=D8=B6=D8=B1=D9=88=D8=
=B1=D9=8A=D8=A9 =D9=84=D9=82=D9=8A=D8=A7=D8=AF=D8=A9
=D8=A7=D9=84=D9=85=D8=B4=D8=A7=D8=B1=D9=8A=D8=B9 =D8=A7=D9=84=D8=B1=D9=8A=
=D8=A7=D8=AF=D9=8A=D8=A9</span></b><span dir=3D"LTR"></span><span dir=3D"LT=
R"></span><b><span dir=3D"LTR" style=3D"font-family:Arial,&quot;sans-serif&=
quot;;color:black;background-image:initial;background-position:initial;back=
ground-size:initial;background-repeat:initial;background-origin:initial;bac=
kground-clip:initial"><span dir=3D"LTR"></span><span dir=3D"LTR"></span>.</=
span></b><b><span lang=3D"AR-SA" style=3D"font-family:Arial,&quot;sans-seri=
f&quot;;color:black;background-image:initial;background-position:initial;ba=
ckground-size:initial;background-repeat:initial;background-origin:initial;b=
ackground-clip:initial"></span></b></p>

<p class=3D"gmail-MsoListParagraphCxSpLast" dir=3D"RTL" style=3D"margin:0in=
 0.5in 0.0001pt 0in;direction:rtl;unicode-bidi:embed;font-size:12pt;font-fa=
mily:&quot;Times New Roman&quot;,&quot;serif&quot;"><b><span style=3D"font-=
size:15.5pt;font-family:Wingdings;color:black">=C3=BC<span style=3D"font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-weight:normal;font=
-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times Ne=
w Roman&quot;">=C2=A0=C2=A0=C2=A0
</span></span></b><span dir=3D"RTL"></span><b><span lang=3D"AR-SA" style=3D=
"font-family:Arial,&quot;sans-serif&quot;;color:black;background-image:init=
ial;background-position:initial;background-size:initial;background-repeat:i=
nitial;background-origin:initial;background-clip:initial">=D8=A7=D9=84=D8=
=AA=D9=88=D8=A7=D8=B5=D9=84 =D8=A8=D9=83=D9=81=D8=A7=D8=A1=D8=A9 =D9=88=D9=
=81=D8=A7=D8=B9=D9=84=D9=8A=D8=A9 =D9=85=D8=B9 =D8=A7=D9=84=D8=A3=D8=B7=D8=
=B1=D8=A7=D9=81
=D8=A7=D9=84=D9=85=D8=B9=D9=86=D9=8A=D8=A9 =D8=A7=D9=84=D8=AE=D8=A7=D8=B1=
=D8=AC=D9=8A=D8=A9 =D9=88=D8=A7=D9=84=D8=AF=D8=A7=D8=AE=D9=84=D9=8A=D8=A9 =
=D9=81=D9=8A =D8=A7=D9=84=D9=85=D8=B4=D8=B1=D9=88=D8=B9 =D8=A7=D9=84=D8=B1=
=D9=8A=D8=A7=D8=AF=D9=8A</span></b><span dir=3D"LTR"></span><span dir=3D"LT=
R"></span><b><span dir=3D"LTR" style=3D"font-family:Arial,&quot;sans-serif&=
quot;;color:black;background-image:initial;background-position:initial;back=
ground-size:initial;background-repeat:initial;background-origin:initial;bac=
kground-clip:initial"><span dir=3D"LTR"></span><span dir=3D"LTR"></span>.</=
span></b><b><u><span dir=3D"LTR" style=3D"font-size:15.5pt;font-family:Aria=
l,&quot;sans-serif&quot;;color:black;background-image:initial;background-po=
sition:initial;background-size:initial;background-repeat:initial;background=
-origin:initial;background-clip:initial"></span></u></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0.25in 0.0001pt 0in;=
direction:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New=
 Roman&quot;,&quot;serif&quot;"><b><u><span dir=3D"LTR" style=3D"font-size:=
15.5pt;font-family:Arial,&quot;sans-serif&quot;;color:black;background-imag=
e:initial;background-position:initial;background-size:initial;background-re=
peat:initial;background-origin:initial;background-clip:initial"><span style=
=3D"text-decoration-line:none">=C2=A0</span></span></u></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span lang=3D"AR-SA" style=3D"font-size:22pt;color=
:red">=D9=84=D8=AA=D8=A3=D9=83=D9=8A=D8=AF
=D9=85=D8=B4=D8=A7=D8=B1=D9=83=D8=AA=D9=83=D9=85 =D8=A7=D9=84=D8=B4=D9=87=
=D8=A7=D8=AF=D8=A9 =D8=A7=D9=84=D9=85=D8=B0=D9=83=D9=88=D8=B1=D8=A9 =D8=A7=
=D8=B9=D9=84=D8=A7=D9=87 =D9=8A=D8=B1=D8=AC=D9=89 =D8=A7=D9=84=D8=AA=D9=88=
=D8=A7=D8=B5=D9=84 =D9=85=D8=B9 =D8=A3/ =D8=B3=D8=A7=D8=B1=D8=A9 =D8=B9=D8=
=A8=D8=AF =D8=A7=D9=84=D8=AC=D9=88=D8=A7=D8=AF =E2=80=93 =D8=AC=D9=88=D8=A7=
=D9=84 &amp;
=D9=88=D8=A7=D8=AA=D8=B3 =D8=A7=D8=A8 00201062992510 - 00201096841626</span=
><span dir=3D"LTR" style=3D"font-size:22pt;color:red"></span></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span lang=3D"AR-SA" style=3D"font-size:18pt">=D8=
=AF=D9=88=D8=B1=D8=A7=D8=AA
=D8=AA=D8=AF=D8=B1=D9=8A=D8=A8=D9=8A=D8=A9 =D9=88=D9=86=D8=AF=D9=88=D8=A7=
=D8=AA =D8=B0=D8=A7=D8=AA =D8=B5=D9=84=D8=A9:</span><span dir=3D"LTR" style=
=3D"font-size:18pt"></span></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span lang=3D"AR-SA" style=3D"font-size:18pt">=D8=
=A7=D8=B3=D8=AA=D8=B1=D8=A7=D8=AA=D9=8A=D8=AC=D9=8A=D8=A7=D8=AA
=D8=A5=D8=B9=D8=A7=D8=AF=D8=A9 =D9=87=D9=86=D8=AF=D8=B3=D8=A9 =D9=88=D8=AA=
=D8=AD=D8=B3=D9=8A=D9=86 =D8=B9=D9=85=D9=84=D9=8A=D8=A7=D8=AA =D8=A7=D9=84=
=D8=A7=D8=B9=D9=85=D8=A7=D9=84</span><span dir=3D"LTR" style=3D"font-size:1=
8pt"></span></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span lang=3D"AR-SA" style=3D"font-size:18pt">=D8=
=A7=D9=84=D9=82=D9=8A=D8=A7=D8=AF=D8=A9
=D9=88=D8=A7=D9=84=D8=AA=D9=81=D9=83=D9=8A=D8=B1 =D8=A7=D9=84=D9=86=D9=82=
=D8=AF=D9=8A =D9=88=D8=A7=D9=84=D8=A5=D8=A8=D8=AA=D9=83=D8=A7=D8=B1</span><=
span dir=3D"LTR" style=3D"font-size:18pt"></span></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span lang=3D"AR-SA" style=3D"font-size:18pt">=D8=
=A3=D8=AF=D9=88=D8=A7=D8=AA
=D9=88=D9=85=D9=86=D9=87=D8=AC=D9=8A=D8=A7=D8=AA =D8=A7=D9=84=D8=AA=D9=85=
=D9=8A=D8=B2 =D8=A7=D9=84=D9=85=D8=A4=D8=B3=D8=B3=D9=8A =D9=88=D8=AA=D8=AD=
=D8=B3=D9=8A=D9=86 =D8=A7=D9=84=D8=AC=D9=88=D8=AF=D8=A9</span><span dir=3D"=
LTR" style=3D"font-size:18pt"></span></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span lang=3D"AR-SA" style=3D"font-size:18pt">=D8=
=A7=D9=84=D8=AA=D9=81=D9=83=D9=8A=D8=B1
=D8=A7=D9=84=D8=A5=D8=A8=D8=AF=D8=A7=D8=B9=D9=8A =D9=88=D8=A7=D9=84=D9=82=
=D9=8A=D8=A7=D8=AF=D8=A9 =D8=A7=D9=84=D9=81=D8=B9=D8=A7=D9=84=D8=A9</span><=
span dir=3D"LTR" style=3D"font-size:18pt"></span></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span lang=3D"AR-SA" style=3D"font-size:18pt">=D8=
=B5=D9=8A=D8=A7=D8=BA=D8=A9
=D9=88=D8=AA=D8=B5=D9=85=D9=8A=D9=85 =E2=80=8F=E2=80=8F=D8=A7=D8=B3=D8=AA=
=D8=B1=D8=A7=D8=AA=D9=8A=D8=AC=D9=8A=D8=A9 =D8=A7=D9=84=D8=A7=D8=B3=D8=AA=
=D8=AF=D8=A7=D9=85=D8=A9 =D8=A7=D9=84=D9=85=D8=B1=D9=86=D8=A9 =D9=88=D8=A7=
=D9=84=D8=B1=D8=B4=D9=8A=D9=82=D8=A9</span></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span lang=3D"AR-SA" style=3D"font-size:18pt">=C2=
=A0</span></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span lang=3D"AR-SA" style=3D"font-size:18pt">=C2=
=A0</span></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 0.0001pt;directi=
on:rtl;unicode-bidi:embed;font-size:12pt;font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;"><span dir=3D"LTR" style=3D"font-size:18pt">=C2=A0<=
/span></p></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAPwB3jg6gnOV9WBDUi0C8NdUSL9%3DzTLJHL6op1beJs1=
UQ8c7Nw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAPwB3jg6gnOV9WBDUi0C8NdUSL9%3DzT=
LJHL6op1beJs1UQ8c7Nw%40mail.gmail.com</a>.<br />

--000000000000b3b89f05e8af9b9f--
