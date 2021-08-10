Return-Path: <clang-built-linux+bncBCY5NL7ISQIRB5PYZGEAMGQE5PWW6KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FDB3E5AE0
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 15:17:42 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id d28-20020a4ae83c0000b0290284473ffe48sf7372582ood.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 06:17:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628601461; cv=pass;
        d=google.com; s=arc-20160816;
        b=nXXCcSki36NXe2KdJtgkzTCRTlktDm7dEkVtqXk3qG193uPZKKT4mjddplHmwdt+KX
         /VsjnIrEKGDuoQEtJdEI+ipRer7L8khnczgcdem4AEIToCxNFgYUwSP5SRR0CQFefaSY
         +lffLzEqKMJM09RnDmowv7IwbB4f8lBwfska/ZY46fKP1KoXhXkUXDNd3CUcHt2jUmWy
         iLuSY3dTVNPMa4CHr9YoaqpHyGIOT6tyxBumG6XS/ArwP6reyQSirHz6Yo4cfeQbVkRc
         8fqQzBomra6apOcZvUQFB1sDRI7gYhL75j+BRN4jXmN/NQTErabUgirtByoAs+LpXy7H
         8UqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :sender:mime-version:dkim-signature;
        bh=nmkIqrP/ohQNOhXp/qimR/MaAHu47GdNcg0D4SuxDFw=;
        b=o95yD9WAUgVSZ3IJy0OdJNI6AFwoajzC6TVy5pft3FsrHNLpdlacRkfDn6hRBdoZSK
         bFlDIovBv2Kco7OmEMPmmYZzVHRISbKowtM75dag6JauT7abRBJLeMlylMDIkv0LhTag
         R6tpGqiY+leeLynC3BfB43q7ywhG/dY3Ib+jlWy4MT+BihdGbeQecFo4++5iFK2w/E7S
         aLQ5L3T0pP2VfyJRkTPKVvbCLM4En9jj+fYoimisPYJBuP9GM5KPAZ+WgwOomas6HQbF
         E6UjvcodLfSBsjBAdGo8VQCru1KiLJO7FWoCuFHzhfBI9sqQxiooxewG040K6PhZj3dy
         miGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=arrUWVst;
       spf=pass (google.com: domain of immeublesourou@gmail.com designates 2607:f8b0:4864:20::e36 as permitted sender) smtp.mailfrom=immeublesourou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nmkIqrP/ohQNOhXp/qimR/MaAHu47GdNcg0D4SuxDFw=;
        b=FhHhB3NsrQFr6XzAgWm9/AUEpblYVY0yl4IA5EAHIBfJ+76trCSC3fHsvBPYfcHImH
         iRl0VcyuQma+yle5Ku2YEbffIpVQ0FcNCtNXnbOa9nPdPixmJhNeoT7NCbBOToYxIJsE
         2c7lo5Crc8JuUWJKJIsddyPQmAzcF8yTYd3pYS35JGsNDtp6gRkREWrYA05XfamPsUhv
         66CVCoWqlFr/YGS0F+o9fwttce4rOqLLFBbozFDRifvC+PTGbkOA+kM9FLvOS3w4cbDU
         vGwiEY0gzkwlRPHGZZxx1851nNkNj6g8D/YNxkLPspUOwuILSN8LDLF1cYmIt6TEzvhQ
         lsnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nmkIqrP/ohQNOhXp/qimR/MaAHu47GdNcg0D4SuxDFw=;
        b=UZIOuNeYvXYgzHvfrDmp9HC3NOv3dD6bf+xPirz9AQhq46QyBGqF1DxlY91lHnFpZq
         +GvDO551o2LAMDkPKF2oZkebmO7FQUsjyOddYKersXaJJystyiS9AV8uyO3XG8BvxrV4
         695r174xUnoHn7UQmunjzZUZd88Jhnj4C0D3E1TxPdkvC4wRPCnVHcbBoi7mdGbCVoFY
         Iq9cmHkpOEMijcRPyX/opkX4apKBBZaGkfQvqAveQojSr7bScCGVZasIBV55lVylkPka
         cjzLuMB1Zg8a4u/6tp5jRBBXVwLX7rmeRW7K2M6vMcp50FKmoMoyyUazB+uApEppVE9q
         0/Dw==
X-Gm-Message-State: AOAM531WEeNYB+Uqnka1fhD+e4UyVBLld6EM/t08tP9KHuAJKOx96CWk
	D9lxG3BqFmelaPbqzOwqS+4=
X-Google-Smtp-Source: ABdhPJy+6Oa4Arm88vlaAk6n5k83eGx9KekE4ZV3YVmeotLw/SxK5XEAhxpZbCHbczzoNWHwwLgh0w==
X-Received: by 2002:a4a:e8c2:: with SMTP id h2mr9241411ooe.75.1628601461463;
        Tue, 10 Aug 2021 06:17:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:15a6:: with SMTP id t38ls4543607oiw.0.gmail; Tue,
 10 Aug 2021 06:17:41 -0700 (PDT)
X-Received: by 2002:a54:4497:: with SMTP id v23mr7006704oiv.151.1628601461042;
        Tue, 10 Aug 2021 06:17:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628601461; cv=none;
        d=google.com; s=arc-20160816;
        b=cllUNZ8cTd5FuXYCxWDfAVhtNWQFNV4gZ8W654tJJMysjiyc3fPIxY2X5Yw0PS1lF0
         JbmySPanheCg+iE4SwuM5f30zQr2CAimjSzU8VufUZ5DjR9Yck4DBmLxrVSlb9BGT0vl
         uHYGas9pbdHIhv6zzoIt0E7phk7TBr+mDHyVRJRuf+ItHaFZ5eVtrH2PddFtFL8ailGw
         kunr4VgcUOoixn3n3c90ZPfJ/lOROBvEgtMdvuQxjaf6te/ciX1QLutiAT8Nqo3aVai4
         uwIjEaaBJISowOGy5G/A+N9H7sdwXLhKpn2oA6DVSuaqKTS1MKChyfQ8enPVTCLE7a8X
         szDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:sender:mime-version:dkim-signature;
        bh=2tvLhkad0w+Mh63WhnFJkmRFgYsLXsJmUqGVjzUAFIo=;
        b=O4Kj2ZDUatiXwcAdpjhfCTWe3DdEuB+zcrEvTlGKY2fqJ2JDzxTAjyR/E1anzn3SHv
         33303Q3UO2hFXXnm2eHtU7wIgNx/6srpSAN7W5DvZDFEAYPB7P9+Xmno9WHh+0LuU4JF
         J5Ccj3+AENKPyijN4HVlzDMZTuJjeOgshnpTDCLSmYzYe3OHJAGMVi4+ig12eZvk51gU
         qTHbG5Nz+qG3BNuufFeFW3YzpcdOc/Ynfpe76hEA3bdpFUOSnU41RNmQ74wDhAyddnjx
         bjHvEhnZRMHaKP3Jl1S1ug2KyEVgI9utEuszIqZsYlnyxsUKg4+XFnnN3sRfp1J24ANl
         Teyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=arrUWVst;
       spf=pass (google.com: domain of immeublesourou@gmail.com designates 2607:f8b0:4864:20::e36 as permitted sender) smtp.mailfrom=immeublesourou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com. [2607:f8b0:4864:20::e36])
        by gmr-mx.google.com with ESMTPS id b9si1184504ooq.1.2021.08.10.06.17.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 06:17:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of immeublesourou@gmail.com designates 2607:f8b0:4864:20::e36 as permitted sender) client-ip=2607:f8b0:4864:20::e36;
Received: by mail-vs1-xe36.google.com with SMTP id f6so1591962vso.5
        for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 06:17:41 -0700 (PDT)
X-Received: by 2002:a67:1c05:: with SMTP id c5mr21469505vsc.25.1628601460674;
 Tue, 10 Aug 2021 06:17:40 -0700 (PDT)
MIME-Version: 1.0
Sender: immeublesourou@gmail.com
Received: by 2002:ab0:3903:0:0:0:0:0 with HTTP; Tue, 10 Aug 2021 06:17:40
 -0700 (PDT)
From: John Kumor <owo219901@gmail.com>
Date: Wed, 11 Aug 2021 01:17:40 +1200
Message-ID: <CAHdg_cQd0mHgO221J3A9iPbmdr5dt6+0_tZ0eXRBswJroTF+jA@mail.gmail.com>
Subject: Urgent
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: owo219901@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=arrUWVst;       spf=pass
 (google.com: domain of immeublesourou@gmail.com designates
 2607:f8b0:4864:20::e36 as permitted sender) smtp.mailfrom=immeublesourou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

My dear,
Greetings! I trust that all is well with you and your family. Did you
receive my previous email?
Regards
John Kumor.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHdg_cQd0mHgO221J3A9iPbmdr5dt6%2B0_tZ0eXRBswJroTF%2BjA%40mail.gmail.com.
