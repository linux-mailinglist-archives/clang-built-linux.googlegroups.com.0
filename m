Return-Path: <clang-built-linux+bncBDBZBSOQVUDRBPG5YGEAMGQEMX3T2HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 446E23E3D3E
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 01:54:37 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id j13-20020a0cf30d0000b029032dd803a7edsf11351275qvl.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Aug 2021 16:54:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628466876; cv=pass;
        d=google.com; s=arc-20160816;
        b=zd3nwAfP0G0jKGAh6ntUVEe5fAr5ozZHT3jKfkiaHktPyU3UbWSh17cXIHmDoJZFDY
         B6s0A4RSCLwkjCs0VFPrBXvZZSXsMZvz0vxZXLIFKZsf04T/1sPZRfL6/W9iPQdqJS+z
         kASGkesGbAsYRwWRT7SBc/0l7P2J5LedqkbrNznF2XLtkK5Xe8belH2cRbqzmQ6JZmUy
         cnEmgAvX/YiI3PJYXiyraw0jLtqKJmru+R04ySf6JtEZ2XW8i3V1mSPRK0URhStMqKH1
         K1F2BkbA4IcHzUViCMW68VE1zJj37472ZW//K1Gt/uKP5daHYdAYEkiVfOXWSKKRcTK1
         Ptkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=eRv/0e/fhJRNEG8e5NN87/1DTSX5q3fwyUv9JiQcRQA=;
        b=TpGUb3d6eqDFG3KdnzfhbhEg2xvwENpRYf1QcP08wObfrs1Ezvp0Yx3a77P1x1/sLR
         an7jHxwU2YbZ+ydvmS11NRiOGrgWLHg/hwHWc+Y4uV8AUYeN2NDVVFxnMqwDNenlIFFI
         IIoOFy8OOyrPF4WUsuN1QaaaSklQuANW75JgGQ8DNyuP+RUXrticlVHIWPTxQz+Yu9wA
         ZAwOGi+DMp/zBJn2GgMhgpb7GMM2Ae1qIn+msMyKvxFV8w7JDkiv7udJonlSpEqcwOSh
         m4Z3uuFSJrTjsvf+21zo4AN817/LSymGEAdJ8iAKCHt/ch1n786uIBCdyMGMTz3FlI5J
         +dQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WWsXF+TV;
       spf=pass (google.com: domain of dianatranmalaysia2@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=dianatranmalaysia2@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRv/0e/fhJRNEG8e5NN87/1DTSX5q3fwyUv9JiQcRQA=;
        b=KfBEfIIEjDB3n8sxsPAkA/o49T6fMyOoteiwJwemrDTINwfSPF3wpCt7HPVqZ6csot
         gtn0isKA3rACeU3hGgIX90hFDkb4PS7pmhVTbZOWh8DMbsPLmejkEySjvmsYgLHydeAL
         ELoecnDugnNH3opqdcBKFdyrAXH2nw9D07rTtG3vy+15Wa+mGqnbgzbQtU5faMrBxAI9
         hvVLrY6LKIkYrptJl/S8VDF97cNyBCnmv5V4vX4bt34cAF8SSNmQHo2aSrSjhQAAdPZc
         YpERWkGHZcocVCZlCDkUYkcYuNtzdV7lY8P1Pwu3Q5lNcB+WpnK9OoxO54cD7VUap440
         918Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRv/0e/fhJRNEG8e5NN87/1DTSX5q3fwyUv9JiQcRQA=;
        b=q6yxnLHvZ+6d2on7zV9N93hCo2HXkP4HLFNAaRzfFLEH42ENoL91y7z1yrPnFURhJp
         K0G850rQ+RHr/TuaLcZhzbLhVz2OajYEAcFz6CCi9ud8hZNvcbbyCNZIn0Genx1+sYw3
         QyqHLDouka2bKnqU2lVaPZ0dphBwxaJWhIvGP3T4OZU5MrklawICWD7ncdAsdKfHkALN
         SRGy01XniCPG6YMQUxv9YVqco7oYbneKaWaMP3wuijqo7TC3udj4ZeHR0oK1jABHYL1l
         qj0I/kIwC4FgubrHeevKu5xXJ+xQ5k2TObao3jzqyvg9FK+2n2R0iRBu04JyRvVUDNYk
         QTEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRv/0e/fhJRNEG8e5NN87/1DTSX5q3fwyUv9JiQcRQA=;
        b=PWvOEpsbmLw/P8+UnJ2Kzs4XDTiOGJb4/WSFbMZJpzIi+jXOu30UwG6ll4L/T4kHSO
         B84oZAL2+r58G4+jKfE/PQHR5gtS/FU7mieSObOuPGav3JxQiM140/wIHrGR6rochMLQ
         JNh+wQHqFNfnZ8awEaJDyupHA5b1Neb6SyMnSYrRJUwYFLXAT3AnuLMz0DsFMecNNP0u
         TWMUwpgqiEw2xLXWDcVAQTwwxUC/Bb1FcoerNbRZRysGrjL48ZAZOWeYgYyvR2FTZwyd
         CbnYQ9t2mUrxi6HY+FgvXz7SVs88hC5P35xSCoh2phBIJeV9JiReeaAWzbU4cU+1aL5j
         lFKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Dz4mfD70cWckJbFJYy5ODy9XDOJPH1Ie7RJ3Dvrg7KUQZcTJR
	WxHgBiW01I+iu45kqd2t3uQ=
X-Google-Smtp-Source: ABdhPJwBetde8OaCFhl6+/mQ1+zJh5AfC954qSrYZwc6KHmQqsnm7x+CoqV530oDojRD8SrKkuEiqA==
X-Received: by 2002:a05:6214:124:: with SMTP id w4mr2845394qvs.35.1628466876231;
        Sun, 08 Aug 2021 16:54:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1d26:: with SMTP id f6ls2846721qvd.11.gmail; Sun,
 08 Aug 2021 16:54:35 -0700 (PDT)
X-Received: by 2002:a0c:aac2:: with SMTP id g2mr10849408qvb.44.1628466875810;
        Sun, 08 Aug 2021 16:54:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628466875; cv=none;
        d=google.com; s=arc-20160816;
        b=sjHaMUMVuQe9lf0qilIDFL2D2I38mOI961KXRbBZNeko7jKmuJ1eXJHcIf23RSVSnr
         CRN0HDkhpydf73OyVMM/ebUU53EwmQxTKqnix+hzuL9x90fzMFp/cn2/BQzHg/7tLzeH
         9UGSnWKDTCUurvLvQ1o3gediwxGAROVj3GbKIxaUj/UdCvuAZsMXBdGxZwzpKaqGDHXl
         p4eLHZi0EqWhChTGn3sc8KK8nANxNguZQAD7Lm/8ifX/PLpNuSLAXFem0Kmgo0H7AL2g
         wqeyN3g+oA4qy+x7mfASBMg25crK/GL4CcrZkfUtFx3vrIB2xm3Wb2qaFn7QJJoW5uCz
         vBrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=h114sxeJ2KSRWktN0nft0O5/wrPFrnnUw9ZOf14IXFE=;
        b=y0pwIIYI1H1BeytVEyu/FRne16FVq5+F861MMDXIA1nhO4R3rnNWJkzZL3k94lunhc
         s69uJM/Bk5jTWPGmi77NpWJj1qaHOFg7cIiOJAFcI5SxZ0gd6iku+qSvusyG5qBwa2QH
         vjvDflP/umC07j3xEcrky0bdk99D9ILt+CkOz25UffXjld3h7Pku5/xH3dw7+eFGxsx2
         wCM+joOlgnmpDspGvARuPTFXaOLO96HZAriSZmv91fh3Z1qOSn69icTyZFSCY4M33EkG
         8sefR9cO2szupkhb52kwmrH/5ybDbjTey+SwbWN9KTHzP+LIKUdPk/l8SkNqR3AhwtSj
         ZXfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WWsXF+TV;
       spf=pass (google.com: domain of dianatranmalaysia2@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=dianatranmalaysia2@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id m10si309809qkp.6.2021.08.08.16.54.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 16:54:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianatranmalaysia2@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id q2so14473245plr.11
        for <clang-built-linux@googlegroups.com>; Sun, 08 Aug 2021 16:54:35 -0700 (PDT)
X-Received: by 2002:a17:903:404c:b029:12d:2198:c76b with SMTP id
 n12-20020a170903404cb029012d2198c76bmr3147428pla.58.1628466875017; Sun, 08
 Aug 2021 16:54:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:d602:0:0:0:0 with HTTP; Sun, 8 Aug 2021 16:54:34
 -0700 (PDT)
Reply-To: dianatranmalaysia@gmail.com
From: diana tran <dianatranmalaysia2@gmail.com>
Date: Sun, 8 Aug 2021 16:54:34 -0700
Message-ID: <CADcu5+fZM2xNZNFoNFt2Pb4XFxbfy3UVa2kZ6tGfN4Gya8fjcQ@mail.gmail.com>
Subject: Mrs Diana Tran
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianatranmalaysia2@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WWsXF+TV;       spf=pass
 (google.com: domain of dianatranmalaysia2@gmail.com designates
 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=dianatranmalaysia2@gmail.com;
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

-- 
Hello and good day.

My name is Mrs Diana Tran,from Malaysia.I have something important to
share with.I hope to read from you to give you more details

Mrs Diana.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADcu5%2BfZM2xNZNFoNFt2Pb4XFxbfy3UVa2kZ6tGfN4Gya8fjcQ%40mail.gmail.com.
