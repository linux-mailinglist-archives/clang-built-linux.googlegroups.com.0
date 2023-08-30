Return-Path: <clang-built-linux+bncBD66FMGZA4IOBJ52U4DBUBAUT6OWE@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8567578D177
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Aug 2023 02:57:05 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id ffacd0b85a97d-31aca0c0d63sf3064124f8f.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Aug 2023 17:57:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693357025; cv=pass;
        d=google.com; s=arc-20160816;
        b=FPe9vOSnE2mdmY5Z745nfIQxoFMDbUedFD6RehHvS9UEOLdkhZgY6aayyjJVWo/w4l
         LLMNuOBr2qd8P4Dta/CuRjigX2PnvS5fJMsEHt88Pe3bSiZCIEzH4YHUpp5UmZ9Yrt5j
         tNMBbpxOq63R9ZNH9+tbChO65Qo7XK1y4Mw6N9XQew59cANWq0aF1YXdIcFtcjktGfhg
         0kt1Q7rAgXFog311XhiZ2o+3YcqC+rkYr/H3TxFWOHKpa6AUYmZw/9ixYNk/EOTDkp/e
         b6qkbiG1w+jAKuM/kYK8kaR9sCrGKgucSsQsAzRrgW4Jzna5q6TgtCtJSPjVFhqkMz6y
         lnYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=ekoi6xIKdJBlysHKoaI0vDfju9qZdIKUgPq/PSo5jg8=;
        fh=RKOCq0i0uUcY4N7GA6dx3eeMrh4Oy5LF9sY+1XDX8gY=;
        b=JLod2Tj6t3YFrCHCZyGdzomrYSLgC+EwZZFnri8Vaukl1rqNWxAOFsKyO5dxDU68TT
         IPsGOXVfcC04tUEskCNsalH0uA4mcP9ALUn/U1YQDUelTdP6cHdt0JaHuhlTZs0VwCcy
         myC4Wo0fPT2msfVK73sX5dzhZJIzBCgi87szr0/4EN2Km+UYgBTy40Nr9dwusxzd6gDD
         FfTti4eliRBegSQxXIc9f5z5Ep9Eg0GomN4EYsKPvMpVzFRG0c7z2xAqGpq2o+hBa2QC
         SrpGVQ+gffzYjMly4fu7POGtu2+BPcydpXZpZGnI0aJSlfpb+DN1H+9TKHuY/t+7TW3d
         pW6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=6CaUWxXo;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1693357025; x=1693961825; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ekoi6xIKdJBlysHKoaI0vDfju9qZdIKUgPq/PSo5jg8=;
        b=YzgHVE4OjUx0EEh80/4SFsNdV0Dg8+Hk93HrMB24x15bHbjei/xdauBF1vEeEKT2zF
         Lugtes+BAynFYGj6uSyMA3NsuBJDX5HUm38WIm6K9xFklsgq1y5eIpLsicAx8CpSUOeP
         +HRSrXsobTIn64y4BKW4u0AOqokgG7M9+NJLcZxx7KgNVGO8osHX5fK18+K/ShGwtnU7
         VF0l0EbQgPsDdJFZ/R2HFtUmaTuJDL60t/WJQJAsc0QCY8eOFAht9VTQBYsb5epYmvK3
         SfI/qX/Np0bgmFQlk5pSzt/0xHxaeZzux5EtcJFMq4nBpLEfUBl7V+Cks9+VMy3TdHOp
         iAMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693357025; x=1693961825;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ekoi6xIKdJBlysHKoaI0vDfju9qZdIKUgPq/PSo5jg8=;
        b=TVyht+K5cDsDuLwBiJ7R5XgxcLCoMWRInDDLYnahRW1dxRXZyNqT8wqlI5TrIRghDn
         jhH08qoHUfyZwKSbnt3SlzQ36iBzdyzFs/L0PX3kedp7OoR4fR4KoT/QDA+CT9brQC78
         38mEfPntJUcmsZyM3FYrzjfhoMZDTcz/32O2dBdYHGweeGrzqUDtEY1kJ8IdtYAzk3eq
         z1GtaaZ8NY1qsOPetbEuD6BDiSc9HBWEvuurnrtVXQXIvED4sjhwERoqAHGQUzzwdKvL
         FmAvzJcw9BVh60VZ+5e8+6yOH4KU/wndwuQ2SFCilBR1w8C9EKXoeoNxGN8HzkP/CT/C
         Uy9A==
X-Gm-Message-State: AOJu0YznIdJ8t2c0ouvhe23K4JmD0A6o1rx1qS+brkwraIs7ssII7dHl
	xYBUBPvh7KN0HHl6y4wexzw=
X-Google-Smtp-Source: AGHT+IGmmTF5dmX7gOVBw66yFyEQiqHp6UwrehZq79fjiLX+XthSYuy7a3CimJLf/sqUHD/bcA0alA==
X-Received: by 2002:a5d:68c1:0:b0:319:8bb3:ab83 with SMTP id p1-20020a5d68c1000000b003198bb3ab83mr480425wrw.66.1693357024444;
        Tue, 29 Aug 2023 17:57:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:400b:0:b0:314:c05:57df with SMTP id n11-20020a5d400b000000b003140c0557dfls417385wrp.0.-pod-prod-01-eu;
 Tue, 29 Aug 2023 17:57:02 -0700 (PDT)
X-Received: by 2002:a5d:4e52:0:b0:319:785a:fce0 with SMTP id r18-20020a5d4e52000000b00319785afce0mr474560wrt.26.1693357022621;
        Tue, 29 Aug 2023 17:57:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693357022; cv=none;
        d=google.com; s=arc-20160816;
        b=INhQvUC8bw5N2goY8bwRLXp3cWR66cyfqmxC4JTGMV5gzjHW21MsAnwNQ3iBOCK0g9
         z2NWcMVhgYHrsPiaY+isSm6zTOjyq4M96tY17Uy/I6fHgxo9R3YptRbyzx1jj+3NEnBz
         tCKk84UX21X6Xr2z57br8gw8qWn754XLp7zqW+XztU1Efc96ZH77qGuAItna++xcrTWI
         3hWxhrqpWyZAa7swRObGQTNNICKg/PVhsP87jljI8q0NAMOGP7BDo/sxh01es3ErY74h
         uJXX72oDKF4u9Yn61n+7AvIGaIhtCFPyd1ukz+i7kochW5i4HxjA7khzj7zLw4frozCe
         5BLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=dShkX/Rc0TIxw2HSnnoqv58AUxEEOtSKk111xWxBqfo=;
        fh=RKOCq0i0uUcY4N7GA6dx3eeMrh4Oy5LF9sY+1XDX8gY=;
        b=NXfeqrMLUIFzmUdkD6yQpFb9pq4xtTHodYhmD49a9M8LuGD9bgbOJTWt4c7ho25ZjY
         Opso8tUfur09CWUMJNanKfTgFzD2bmv3jPOIlbKYtihAXEhKI3JcuZyy5KDRljiak3Gh
         1PDEsvvsa55NAPxbrPJeJvJcpso3NXdi6wWM+WEy93n2YwEoc7QlHD4Hb2FE+dQ+jYJy
         J3jaUaG1omo8fOrA/0n6jlAvs9hy2R1toqDeRYCnxNKIP7Q4e3AHTyYBLdz078IdTpLZ
         qiU8mEd7+bP/G7IeXVttN3VHc2zJfDvZXqaJqDmUhhxGvkR5fCbOmMWUjmsFmIjbGMiZ
         huHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=6CaUWxXo;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id bp5-20020a5d5a85000000b003179a34f4c4si843327wrb.6.2023.08.29.17.57.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 17:57:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4005f0a6c2bso24545e9.1
        for <clang-built-linux@googlegroups.com>; Tue, 29 Aug 2023 17:57:02 -0700 (PDT)
X-Received: by 2002:a05:600c:1d87:b0:3fe:d691:7d63 with SMTP id
 p7-20020a05600c1d8700b003fed6917d63mr285544wms.6.1693357022012; Tue, 29 Aug
 2023 17:57:02 -0700 (PDT)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Aug 2023 17:56:45 -0700
Message-ID: <CAGG=3QWu35QcEyCUUy5M-KSai94DyO99myzt2kDyjmeAOaR5Rw@mail.gmail.com>
Subject: [Announcement] Clang-Built Linux Meetup 2023: CFP
To: Bill Wendling <morbo@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20221208 header.b=6CaUWxXo;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::334 as
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

This year's Clang-Built Linux Meetup takes place at the Omni Richmond
Hotel (https://www.omnihotels.com/hotels/richmond), which is the same
place as the Linux Plumbers conference (https://lpc.events/). It's on
November 11th, which is the Saturday before Plumbers.

This is a time for people interested in Clang-Built Linux to get
together in person and discuss what we're doing. We're planning on
having presentations, hack-a-thons, and discussions about future
directions for CBL.

This is our call for presentations! If you have a paper,
topic-of-discussion, or maybe a presentation you'd like to practice
before giving the same at Plumbers, please let Nick Desaulniers and me
know about it!

Bonus plus: we're seriously considering swag this year. ;-)

  https://clangbuiltlinux.github.io/meetup.html

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWu35QcEyCUUy5M-KSai94DyO99myzt2kDyjmeAOaR5Rw%40mail.gmail.com.
