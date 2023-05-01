Return-Path: <clang-built-linux+bncBD66FMGZA4IKRQOAUIDBUBAGXPXRW@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 128166F3921
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 May 2023 22:27:21 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id 5b1f17b1804b1-3f168827701sf9359945e9.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 May 2023 13:27:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682972840; cv=pass;
        d=google.com; s=arc-20160816;
        b=LWTJi84b0Af10PDpKL9QhTO5X30pkpb5WsE1txr2cnffzhQvKVbkFc9wrkaUWHIOY1
         +MQG8icHBrTyb/EJMxz1Q0eE5doEgUHMhGR5mquaKxDyWlH6+J2lBfLo460qIPMVL4zZ
         stIdsk12mLs1w+9cGs6L7nlt+nJMLAX0WrJK8eQUG3pqBGNnNnfGB1wc+0nknEbcWpwF
         58F58BPTI1XlAtZmbetEU1vYIHrL6ZSwDYvN64BYB6CNTCcod/mEBl9pRwMJ/kuB2U2U
         cLKYgtowstG53lqtWRiCHtgf0DpP42LiPSQRhbsBIrR9fd7UAw8k4r4oCPl5fbY0pJ/B
         2Azw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=1fYGVBQ3/9hfJAOp3qPMHCtaAt4P7w+UPiMp9gUh3yM=;
        b=SZUc8f/KmcZfFKJzyeR66v4K7vuGp3RL5orIxYAZaitcuxeUjvDc7GACOj6xZmv73b
         6/kV4qg0Jf2/76CiG5yhlS0gKnvyPfUHX6FwoWpI9AlGU1vRzML60zB8LGCudAGGkN5G
         akiyRjqhpDFOkKbDXym5y+6bYwn4j7EydbyAhUfGXWb5EBQlJop2a46j2rDN/gyLYNMn
         s/FBw4YLnJrHrMwGhv53baSr564GAKXZ+1tfO+d593rgXTPrDIt6kKGDHKOScr8VwWDy
         c9nwrcKThTbReWnznvElaUv4GAFfTPyvp1Z7hwD9/tbYxd2il6IVd47D5GVtH++iI5J/
         DCZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=KYBcl74k;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682972840; x=1685564840;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1fYGVBQ3/9hfJAOp3qPMHCtaAt4P7w+UPiMp9gUh3yM=;
        b=aaybVbt+tk8f70AFtgMMwAQYaufpaRyDYbBG5xSSByryYZ3Gt6Ab+6Is287GRv4tPo
         /nT39YQtI4qC2wfMD3sRw9f2BKEpVBx1yMmZ+9a3dHKgL9V1ElyM2NTfMtpYpbbLrgqj
         BA58V0LkMYRkGzfbIw112/2I5ovraET4CU3Mt/uFK71Dqu+j/5vpSwJrn376HOlbh5be
         ogLkEc9FmpmPIbeUUSt3UHYeQ00jJsMhSW/qwYKyilOUtFj7soDJJ5R/5YRx370KZN4f
         2JcOm5Poe/qtJzvO8tLckYd/ECbAcLxdpZVREmWXjMhlDQZpj6qjuKVJdEdrYgGnLJAl
         Cxuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682972840; x=1685564840;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1fYGVBQ3/9hfJAOp3qPMHCtaAt4P7w+UPiMp9gUh3yM=;
        b=g1QzlXOLlFXnorocPOWx5ReJSdyJokx2TmKR3/MGSHxR+yhdv+hK3ejpV+mYCrhaXv
         URavsHzoJXR2raqXyaI/HGqieAoxHmDxu2DVI1/JFAvhbUyzlaIlnywDj2x1oG+1LB6H
         XaPu3TNY2kF2vhVvGvmp+uQ/wjSE0QAp1dm7dLmrQSUfIRSjaqZ0vaBsWvxbM5WY1iJD
         vRykN0pWjxLVDwXS7v4UYbJ7wd7Yyj4k9kpkDrhT1SeSdJCy7DF45TMEgzX2exRcbxVO
         VvhHaYvoor/I5mO5hNnspt1DyjtwlTdSOfhJdI5z0USrZbq5dsMU3oLiCcpQE7pkecRJ
         JyqA==
X-Gm-Message-State: AC+VfDzikHI71YYbVSUdDuSFZgF6J4bBxZW2ZbpQmfkMBdbU51Mc3FZM
	6P0xdEK+BblRkTyR+yQbcmY=
X-Google-Smtp-Source: ACHHUZ5KCMkwUAymlwh9bMaSCaZXPZGkER8bN2vxCFUCEONUiGtPBPBPG0tJ5Q6nBgFotvsblTGbNg==
X-Received: by 2002:a1c:7211:0:b0:3f1:6ec5:bc61 with SMTP id n17-20020a1c7211000000b003f16ec5bc61mr2646350wmc.5.1682972840293;
        Mon, 01 May 2023 13:27:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f717:0:b0:3f1:7596:66be with SMTP id v23-20020a1cf717000000b003f1759666bels5735982wmh.3.-pod-control-gmail;
 Mon, 01 May 2023 13:27:19 -0700 (PDT)
X-Received: by 2002:a05:600c:2212:b0:3f1:7aff:e14a with SMTP id z18-20020a05600c221200b003f17affe14amr10939714wml.39.1682972839066;
        Mon, 01 May 2023 13:27:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682972839; cv=none;
        d=google.com; s=arc-20160816;
        b=sx8kimHV/BqR8mh2iD2hTcYlwnwltcmVWWoPLLeqowVkI02p0sFoi2TttJQlFTMTno
         6i6r13GbsRmETGqaJMN5kuL5qQBHJD3JawiYPe5UB//zMCM+B1gBJCX0bXAyu96pLSm7
         /ac6122us3JHuTIhSHpKb4s6l4kZvTcuV3pkSJ2PV3DRlLh71Qcyi6fPSJ6ntfU52I3u
         FKyNKMjGcSy5Dm1XlBy11qrnHIczyF3iRhE0XbWrYtD9kqqAVf+Vd8S2yfkkWym6R5L9
         rZTM2douQOONmqdnN1SiiWBdGHME9JmrnBvERbp+TyZy6V7fQjSa8TxE6IQnqeU/XXW0
         Zveg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=1A2MsfOVZEuiK++YzvE3jgo2ph5eAEBNJeE4uEbOkUI=;
        b=aUV13QCM7V/LFWmIvx9bMtP8EP8qTApj/f9dPOx4cVZaTufNIfVwdQXrdgUFuuuJyy
         ZBye7SH1mNNBaaQFusy6yA2tdSf0G3bV/yZFF/MXDVELn1MRo6893PCUmau0cwpOwjX8
         Xrz3NlauZHatK5y75IhrMAZEJG76pV6KVZ8P5Uy+mIdZ4+Xv6ZIW6w9+V6+VPqClNyit
         VDYrwlnC0k8O3BeU0xiSOLrEb1s7VLrCuxleWMftWK7IRtub3p148XVspH60gDFZckVM
         CTsuiT6ofz+R0MNL22POqWzd2ZNqC9a47mwz0a/zm+JrxU7m8W29haNNoN59Iszl3VWY
         AexQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=KYBcl74k;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id n37-20020a05600c502500b003f189de7e3fsi1669232wmr.0.2023.05.01.13.27.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 13:27:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-4d9b2045e1cso16a12.1
        for <clang-built-linux@googlegroups.com>; Mon, 01 May 2023 13:27:19 -0700 (PDT)
X-Received: by 2002:a05:6402:5295:b0:505:863:d85f with SMTP id
 en21-20020a056402529500b005050863d85fmr18789edb.4.1682972838293; Mon, 01 May
 2023 13:27:18 -0700 (PDT)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 May 2023 13:27:02 -0700
Message-ID: <CAGG=3QWao2bQ0R8yzkjZQwiwGcDf2u67fztPAv09S1ixDUxYrg@mail.gmail.com>
Subject: [Announcement] Clang-Built Linux Meetup 2023 Dates
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20221208 header.b=KYBcl74k;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::530 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

We plan to hold this year's Clang-Built Linux Meetup on the 11th of
November in Richmond VA. (the Saturday before the Linux Plumbers
Conference). It'll be a time to discuss Clang-specific topics and give
people an opportunity to present their work and/or do a dry run of
their LPC talks. We'll also have hacking sessions, bug hunts, and
future planning.

Further details will be forthcoming later this month.

Share and enjoy!
-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWao2bQ0R8yzkjZQwiwGcDf2u67fztPAv09S1ixDUxYrg%40mail.gmail.com.
