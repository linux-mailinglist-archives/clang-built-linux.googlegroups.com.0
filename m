Return-Path: <clang-built-linux+bncBDRK7WUAV4ARBD6H2LZQKGQE42N4XQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x104f.google.com (mail-pj1-x104f.google.com [IPv6:2607:f8b0:4864:20::104f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB5818CC2D
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 12:05:53 +0100 (CET)
Received: by mail-pj1-x104f.google.com with SMTP id z5sf3673030pjq.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 04:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584702352; cv=pass;
        d=google.com; s=arc-20160816;
        b=YmjcLAV+S1Wv6crydWBJFYfu9VOosXY1Se24lvakByL3lEk3xRXCoyldCtOIaaNjCG
         YcC8G49uclBj3H7GgbgDePRK7Qgxh8hz86mYHMpeTd6/GW+8ArlMk7OpCg0NlG1ihDvE
         MHykzjEDQNx94l+7SBxEPlY8Jq5+SD/53aRUdPSKPYDn+ggTpXewrYSokHaughKk1MLh
         iTLlBEycq1S+QpDE547pa68U8m2AKwEfUlU8srI6lltsQiW2Po+hLfPnStkWZVbHJ1E5
         TIVqrpGMmQhKe2pkzV7ebm+UDd9GL7A5E9TgQRTjmgNGWXxrqnIvmOVS3fRbwLGIM0Rq
         0rhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=mmCI2IFqdJruNnVnWnW6Jc6MtrZ5/QXOBEOCjIDMsww=;
        b=M2DWitfciXuWSPLlaqXTAmi92dnf16thFLL8rXoP6CW306429gvfVdgE0Y1CUvb4AD
         bb8WQNpfFrO9KYAa51OphYzncFfetSz3tg5BCMYBa2ZVaxXb5oSoWIV1GpUJOtHQNdqm
         TD+/CVrXwCV1lhvjNUUyjlDbT0fHQwR6Jyt8J8cHpVhJzUGqrdk6SiTCUxxPLKxkROq+
         oLwZCX9jWz18HmP28XRNF/QXS6KIz0dES45X+6SyknWcjj7LE1PTROrjowj42uMDBEtc
         O2rrI/847/EXqCAGHXfAUBMa3p5B94fs5X9n8sPF+CStaOXS61SP2u5meoBzTyIjAGoH
         oEqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhziRWS6;
       spf=pass (google.com: domain of federabureauofinteligence@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=federabureauofinteligence@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mmCI2IFqdJruNnVnWnW6Jc6MtrZ5/QXOBEOCjIDMsww=;
        b=f425LQ4M25u/8fjYBccYSx/4U9eLSaCsM+7FSA6CfgM2O11UPTchD5K4LG4mYUUPp6
         M6HuT9UddJvO01CWPp+VfYODhzhJfdxA0sRRzImLmb9ypAtAAL8/6lu4iT10z9vE5xRI
         udw9qbSAovN0C9JJ7+IeEaZmdBgPgC3wkRlIdmIB83jZmBr5ZjrYYDoWhewYhQ7Ig1tU
         KcrBhEsvPxnOmetN6dMKJ1N4xrSiAtIS5KdCGxSounZv/O0ULxbV1hKFIX3b/qhOPd2s
         Ny9OvTfThaUmKnh5nZfcGfmsvcX5dIqEwuVvGN+MIgz42z1NTgwe0RDbwDkORa4xzhQC
         1rEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mmCI2IFqdJruNnVnWnW6Jc6MtrZ5/QXOBEOCjIDMsww=;
        b=gb1P+rxCO2/3z8l2uBQq8GAYkraTFjhlcxWkmGwiziH6/eTTIPen+RWnSsBrzorws7
         x/nqffPfo2njEEHjiaqq6tnTwvyUdQM2Hb29eL3OfERymJFST7GNUZ4V8UVAbUOdIQhb
         dkPjF02atAOlE2eiNzOotVIdMRlB/rLYkSKH5KhgKSjhSUv5MRtapqUO5P8a4VX2gulH
         ZOYubedPA1EIZl+NGvVqp2bHP7s48XkFaSB0izfgn5w0vNxR5fgl3DHs9hyfjg4mOrgX
         hEvLMDIxH1taaayatLFaWF+phPXLNONzrNRHG2sy1o7MNF9+Vi276zHFK2WXtZz3rjtv
         Sn8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mmCI2IFqdJruNnVnWnW6Jc6MtrZ5/QXOBEOCjIDMsww=;
        b=mlKLYp5IZB946CtvvK4ICo9STOAQAchFljkdmPPj6GV5a0bbm5unaVQQq33euv6L+R
         lTH0FXyzMFsELdKJ9rBaOsuEpjTfAWPtZ2sHmjpbukMZR79fIXD0D6drozIe3fZBxdK8
         kGHeVACCjysFREmzxHxw9/2ENKn/T4e5mjYUkpEdySOkmpRSdqMXZFgJ5SIHSjbb/5vr
         ff+Zr8sUXbj7kEzAzJFsq5X3SYUDPQ0IpuuOw/0hmvodze6XfjDmVu2LawiMdHeN1/mA
         ilzbX4ihY/s6r2Fym980fY1SYtOEEqAb+HE6zk6oHNzet3ao+sNgsju7gWUkwjhR/Y9H
         btsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1se5kFzLFeQv8quMhraTzvpQqT5QteuLMQv7Dui+Ip4VTUV00T
	Kq5RRcMVkUoe31izsB2/vyI=
X-Google-Smtp-Source: ADFU+vvLBoKy+wHp/NqZCfitBp9FqmKjyjuL9bDGL6FdRuIMBZiZfVCCajUOr0jxgXGEgpLOkAbyMg==
X-Received: by 2002:a63:ec50:: with SMTP id r16mr8525495pgj.274.1584702351865;
        Fri, 20 Mar 2020 04:05:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff15:: with SMTP id f21ls3192544plj.0.gmail; Fri, 20
 Mar 2020 04:05:51 -0700 (PDT)
X-Received: by 2002:a17:90b:3655:: with SMTP id nh21mr9147748pjb.112.1584702351370;
        Fri, 20 Mar 2020 04:05:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584702351; cv=none;
        d=google.com; s=arc-20160816;
        b=ObDzMp5SffHZ13Ep6hVaDIIJJepdXh2GgAcL1B8kCnEgLy1R+KEOu/iybMCZd0iv1u
         5sIAv5Pnrga6xn2AWyEjteyJx51obj041ALi0v8135NZgdH0hT7ug70jYnrVJL3aSw01
         4xNcpSP/P63+5qmm/LGmACODhiLA9zwF3NksLse+gLyrkR/qoyF5YCEMI+4O2f8om0Wq
         pvLkunEX8oyVKY1pNcFgcR2GEYmGzvggD+5Mm+/ITGcJvMB2pvDbskHkjoKtaCOoXsqK
         Ksx3qCcZRStbd7411fLH2vUBZu75f7weCyof+F2Uds3IvV6htDn8Q1ScCdp0wewT+8iV
         GYxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=kuhba0bbR9oJup1oQ7P5tNPZ9FqBHXE57QqcfHgaIHo=;
        b=wnp0tV6aBueB9FC5sG2I0ut34NBwJTg2AcGQztM3O/G4emn3Aq3Gl6r9lZeG1ILDo8
         1fmDr98lhH88Tftgen5NKYpBq0FM5vkfIsORquCTHO9Y4so4Hjp74aYF3veMTfRzyXTF
         kZ0CgoJXSV9/JQEMaCYTNFOF/K5zob/7+wKiM/bF0Ao1yeYbhWwYFmxW/ZxothFZHT1f
         HjEq+/brKd+I3zp4zCfEFOsSDjq4L2crzANaTtKdn60I4tgsczBzneB1rB7nnDJ9L+5A
         bsLR1+jDlbSi0sZkYx1ruw9/akIL0KzGMHeJsCwoGSDijkcemltY30E5FyyMb6QcOcfC
         F/qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhziRWS6;
       spf=pass (google.com: domain of federabureauofinteligence@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=federabureauofinteligence@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x128si327543pgx.2.2020.03.20.04.05.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 04:05:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of federabureauofinteligence@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id 13so6023394oiy.9
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 04:05:51 -0700 (PDT)
X-Received: by 2002:aca:3255:: with SMTP id y82mr6092895oiy.44.1584702350679;
 Fri, 20 Mar 2020 04:05:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:c897:0:0:0:0:0 with HTTP; Fri, 20 Mar 2020 04:05:50
 -0700 (PDT)
From: federa bureau of inteligence <federabureauofinteligence@gmail.com>
Date: Fri, 20 Mar 2020 11:05:50 +0000
Message-ID: <CAE9o6LAHeNh8p2QnSN1JKM6JGQRLhHWyWBNUTUG8Hqo9XJPzRA@mail.gmail.com>
Subject: HAPPY SURVIVAL OF CORONAVIRUS
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: federabureauofinteligence@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DhziRWS6;       spf=pass
 (google.com: domain of federabureauofinteligence@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=federabureauofinteligence@gmail.com;
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

Dear Sir,

HAPPY SURVIVAL OF CORONAVIRUS

We are reaching for a very interesting business transaction which we
feel will of great benefit.We the FBI unit in the western subregion of
Africa have a fund which we confiscated and lodge it in a bank

This fund is worth of $12.5 million dollars.We will need your
assistance to recieve this fund into your account for investment in
your country.

We will need your urgent response for details

Inspector Greg Adams,
For and on behalf of Cote D'Ivoire FBI
Tel 00225 6716 6756

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAE9o6LAHeNh8p2QnSN1JKM6JGQRLhHWyWBNUTUG8Hqo9XJPzRA%40mail.gmail.com.
