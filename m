Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHGBR37QKGQENH5J4KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB522E210D
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 20:55:10 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id e14sf55414qtr.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 11:55:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608753309; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKabGP+bnPDEVPNdfCCUBJ2X/RupxJTeL5DMUqmJhm/ytdhbY2oXjR5DgcfuJt34iY
         PKow0G8UvR6d+sOa3hDAOHzY2+dUkF9iY5LMCER2kXTJosEoh/MN10HzV7/l6bRElwGK
         zxV4etNH0WULNiPtZABPxrWkXtt4RQJSzCSUnJsOtE7dHKlVDCnw+dIwSwHJGinoE+HH
         UbBzHHZ93PoIRUYktvAXWzJQJoRdYTEuLPPL5dX49MIc4M4tKIg99FyxykSurGevdtwh
         FrqoYJ6TydW6x884HgFrm816+7N7MQpbuA3KLrLkAnDZr+9sP52HVgZfDS+xLjnfTdHm
         UZfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=q7F7QSFoNB+OSyJhN7RlQmaj32hbk34LHflKg90dRoU=;
        b=s+1ppoemCgsBJVOdkALwJxnZQpapqa6ycDgB+CE29/orfpKGmgULkIpzHXWhe4GXDO
         KnvwMer6EEXjYnqU7L1BkR7Oh0QvlLuYmAGzkYwOzUrC5Ua8X/3bg6+BPz0TFO65+By4
         SX/n7N5hA0iio68wtNrEi1zT+dggNb7sZzjN7OHBve6+qrqiMNiyWuAK7V9D4EBaQHQq
         3v/6fFgrN/cSWEVy3pT9OTf5ReL+P6pbZpt/1GV790UBMPuVk2XqbnoPczPFONdtF9go
         i+DvjcsbhyomH37X9NJgl1CwjrEzwS3f/Bpjz40ounxb9lWsDcMIR11ocktoSWrSeWc5
         MbqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D5sw9Csi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=q7F7QSFoNB+OSyJhN7RlQmaj32hbk34LHflKg90dRoU=;
        b=K73UfJdE188FkytFwTpbKKb0wMKtxPPu9NPaWFTwFIHG0ps/74U30QZv+2aA3xZzRB
         qUr0X8T08GPFsb34XXy5PT1mSAnWCkmpPZCd5hNR/DEWDWnuHW7tELNXkJvyx/T11xis
         3jWAEPNrXwPoUNpbBkJb4VwW44Hn5sIRvesW6ykhHenQxpNjBeja9JIR9MYhGc1ApF67
         1Fu36Izcpt0iNnrZxCnN7xkHBj/vVPtSdJaZc8ACqTQbzmzKvNGJdmeIbC8g9IvjQ1+g
         kg1lnkd7Bxuydl9pR/vxc+hibXe2Bl6E3O4O+Rt1ghnbwRsu6OO8JPNngSs2LAJmI5s+
         PgQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q7F7QSFoNB+OSyJhN7RlQmaj32hbk34LHflKg90dRoU=;
        b=CyQNfTws9uOgtHiuwBQg/qH25OA6P4cL7420KuUdL9ZBiYE++kMsLYwuYV3nODITOH
         +n0oTYWbuM88rO3jq8FFiV7YnF2G4tbyZLai5uxF2WjQL7PDiImoPPIxQsbx18e4EYP+
         rnVzhT4645P9agOuqFhw9HHh6/Z6mlc5KGPLpyFeSo4Va+1wlCEceeqgf/t6D+e13AL/
         BRTzgZdmijVjh8zHkgy8tU8UTK9And2/oC3sST0PYfLffowvwwEa8d7EN1pVFkctTUly
         2MgIOVGlq9F9J96w/OtsSfcXsn5f67ToEJIz/0EjAfVqqFH0ZSIeKX8ct/YGJn4iMpVA
         f7wA==
X-Gm-Message-State: AOAM5322jaNPMK6diNHp7BygC4qQv0vEmMGHGU+5u/qc5D4dRr8/0b0M
	OS73E7NryGfbKdUSKEeVyGQ=
X-Google-Smtp-Source: ABdhPJxhufB63wkIyJwFjj+hZ57QT7bOnVQ/He3f5yrW4Y/+G9ApSMdxlB25aH0gP/SO6tdPBk1lhQ==
X-Received: by 2002:a37:8341:: with SMTP id f62mr28418130qkd.93.1608753308898;
        Wed, 23 Dec 2020 11:55:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4812:: with SMTP id g18ls11320789qvy.11.gmail; Wed, 23
 Dec 2020 11:55:08 -0800 (PST)
X-Received: by 2002:a0c:ab8b:: with SMTP id j11mr28729427qvb.0.1608753308559;
        Wed, 23 Dec 2020 11:55:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608753308; cv=none;
        d=google.com; s=arc-20160816;
        b=OcPfx+ws2rjOUVbBTW+PAZbaWuo0Bk/tMUq8u7bHl5hZ+n1pmNszFSvOvQgv/I3Bov
         ei2YpmRR5DYEwgErm8FdnsyA3AwLwA3ztLbf0oGUE+UPL6uyxZS2OpspNl1EGV+J5epO
         t+WzpPeGoqTeT26uh91gDrW/j80ZR+BfT0mmEu+ce6wShBt1Quo0kcQFc44DMvCTs+lP
         5IOQIlb1/sA4g+M5y3fdCvFvKa82NW5cdZ/8ptqDeKL5QpOdzRyYPbfLQ8Joj5eyckfZ
         qBm0RVVnkWxapKy+SEE5jwTqaxIfZrBoIMY5HIxUIL5719Nrka1teP4LmXtk8ehyCeGa
         D8jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=kDn2b5C6VhTxeRWXbY3m6oVoBwXJSi32ea9fDuiWelo=;
        b=QcH3iGxMwh529wYo+cZUQ6GSgpG2eHncASzxinRc0uYCVyjNH+JZ2dZeX+NMEhUKC8
         Gvu16ImmPZMDbPqss/BlVC4KtVLeVzlBEjEdZyqLuHHcC8L/icmxoS8DIuFw3NxCGStg
         roAYY2fhmOEcj6BW5dJIJ3gyjFL/a6zjVJj4ZTEpdx2Tufss2cpCMeEBlQe2SHk53cLT
         Hlm8mkkRUOj50R0PFM6XnWlkDltHnc2UpCbXWEhypBWepU6m/dsWEHl4MvKX4N/F4gDP
         3N8acV0fvUwEQgZnzk4MJSrxUSY8r2BTigtQ+McURlzuJGtXaa2IRatirZdRit7Cn10B
         1qzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D5sw9Csi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id t2si1606694qkg.0.2020.12.23.11.55.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 11:55:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id e2so244093pgi.5
        for <clang-built-linux@googlegroups.com>; Wed, 23 Dec 2020 11:55:08 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr26002133pgr.263.1608753307526;
 Wed, 23 Dec 2020 11:55:07 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Dec 2020 11:54:55 -0800
Message-ID: <CAKwvOdnmqUUfawmCdTX3My31QqyJi3KSJ+1PENrn1fSaUCLSSA@mail.gmail.com>
Subject: LinuxConfAU Kernel MiniConf - LLVM
To: andrew@donnellan.id.au
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D5sw9Csi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hi Andrew,
I saw from https://linux.conf.au/schedule/presentation/4/ that you're
running the kernel mini conf.  I'm the kernel maintainer for LLVM
support, and was wondering if it's too late to submit a talk proposal
for your miniconf?  Joel Stanley gave a talk last year
(https://www.youtube.com/watch?v=6d6NGrSHyRE), and I'd like to provide
a similar "status update/how to get started/hackers wanted" style
talk.

From https://linux.conf.au/programme/proposals/ it looks like I missed
the CFP, but was still curious whether the miniconfs still had
room/flexibility.  If not, I'd love to fly out for my first
LinuxConfAU some time, maybe 2022.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnmqUUfawmCdTX3My31QqyJi3KSJ%2B1PENrn1fSaUCLSSA%40mail.gmail.com.
