Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLWVYX3AKGQER3ZCJXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id A303E1E886C
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:03:59 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id y22sf1967902oix.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:03:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782638; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANYpl5QMJExJShk6/s1w6TS73jSm9f6Q466IzGDi0IWHADZ+lRDVIjONJitN4CKQ6+
         3uwQZPIp6zt/Qo46x3KHG+2DzJYEzepM9mN4MNA7gRbVWo4H9dL5y5jk3F8Z2CAseVSV
         Ci6AvTGEL/DP7xss7JD7MmbfAfRwFPN8j+QyQigs5CeyZwx1qZO6B/sWB6h875ERUlMm
         e4+Wt/gUbD1Hucg/IjkFKsBOl/vKedg8LCpgaD9jgVa59S4bRsmGY6OTFuhlT2NRQaEX
         oxN0mO3sc0TrrrbkTwHGxM1Y8PjZQba8QVIZP1Wx3Kqg/OrtPry1giuG21DzYIAteJo4
         cuWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=V/nTXiivP5Mhxeakqk9xV5Uo2GhteR0soI6dZTrYOdk=;
        b=X5pemDtg4VdtaBfFY7bcFRiihPBzelirVse+D3k2PH6YWbdQORzkVjiEY77PkiDjaa
         q7TeHwXt08rYauGR214vY5WegK15rIkPzVSEmDqaMnaBfTdg1M0mDGdo5xHsGILgJi3L
         mVd2i+tyquQghs+DTwclL6cjYNrVfDzJvdEsmqqP1XNGwZQVSjVoAJmh5ilCFbyalhyz
         +60APNmpsUTqb2M0badIRuWoQHoKzWZbCYCuJiiAH7h2AbDwC8RSlbPaKpglmNPeqcD7
         hoCRVM4rxEkU9WszkmJtOZ4SSg7UfM9nV6fEge+spEjOy65dGN8S0iAcmw7T3wS9ULRP
         FvdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e1eTWdUf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/nTXiivP5Mhxeakqk9xV5Uo2GhteR0soI6dZTrYOdk=;
        b=UpykzZHBuqciXVNqGz72+FnPxnDGJH5CmTh7V4T2rdQt/Otopep1zZfmWx+wT7NEEw
         y0FOnnpYevtsvNquzsu0HQyVahHItD1C9DSbreDZtTMh2aMQw8TU6+HPyu8mc4Qf1g4k
         XiBK5myGZVNu5ZXZ+Uvrn56ewnQopNbylCZN1W+jqMBHWGqQpP1Cc0ali2CjKT5Pw6jH
         KGc2//ue7SBvga+kOpW/RtxNwG2ol6X/RAPjPMDJk4u+tQxnWYcJ25F+eqcviHicrpS9
         71dLjHUAi6nQm/u/H89JteMrM3grJIzmt6WUz0y6VDO5PtGMHY9XuzSmvz45TWb0V1ss
         KrqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V/nTXiivP5Mhxeakqk9xV5Uo2GhteR0soI6dZTrYOdk=;
        b=RpWwd4v93RBB0E0ByK0yFIwEJSMcEPr6i14heGoccZVOp9sQTe4Ca3AlBDCmiT3O7d
         4g4EY4OifuKyVWemf7wOrz3LXnuRDtYigJyE0gg/K5k90N8mFGSD1njgF7eSjNJLjFLK
         OwpiavU+VqnyRnLCr91OgtCIMhWQTvGDUaUg1O/El6bv1VnzkNhe5msrEX7RV7YKqcvJ
         /1W1qhnVra1yFpJaXfscEllZK9CZ7u1d6fpIF5fCIxagyv4P+uQVukqH0NxeFE4lKkJT
         zPo3Nv3/IRcrH/bNsNq0+NM82j3ZIKRqAmoz3hVRr24knuylf7tF0nuaFMzuBsDebTKk
         g5Yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Bs1F47rvieKJ+8w/x1sVwHiFUWgEUCLot71i6z/dF3PMDSFPo
	jo0emhUWjdLn5DNMoxu3J7o=
X-Google-Smtp-Source: ABdhPJzz++XHdl2tJeuXjTCKguL8xzXzGO1uc/XtgoQNw1XnmpKnD3WfSfMxMXoHUC99Tv7yOo97bg==
X-Received: by 2002:aca:489:: with SMTP id 131mr7558200oie.131.1590782638663;
        Fri, 29 May 2020 13:03:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4790:: with SMTP id u138ls1413779oia.3.gmail; Fri, 29
 May 2020 13:03:58 -0700 (PDT)
X-Received: by 2002:a54:4005:: with SMTP id x5mr5400320oie.127.1590782638411;
        Fri, 29 May 2020 13:03:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782638; cv=none;
        d=google.com; s=arc-20160816;
        b=kjXiSYZdTxWGnsIjL5wrt/i/IvO4plXkrWi9ngp6GgZwUic+mW8y7etGRi5Kdwa0vA
         bHU3uphOMbTTf0pQw5KHxlQMvAdI9vt7IRulBYIaJanbHUObXaiFYT+Zn2SMnqcg0ws8
         +GDREN8LytEAeqDsnlrjLxJRYOeiAmYcOiESn38ca99cbj4xPRUGLE/kYvSf5WO73kVk
         LjHKJlvD3Ye597C8o+hXls7Z2EprtydBs9Lq3/eX4nhSYa8qch4HWhv0HVq5GpHDIVoO
         zvaa5qfJ6wb8UNphRs/TLws1f7XZJAMUw4WFes06XstsTju/dwSnBx9gBl4h5ABUKkTQ
         XTNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jc9W1lwloD2dKjs9tH5GF5HCcPhR+AQW3rE24ig1wNo=;
        b=rB0mJ+Cx0twMb56GtDDb3JxJUgvBob9yJ1FwCwhSErIHE0YK6uRu5yEFCQssKEAnx5
         OnqRedMp4x3jB3OfngPNVKZPo7xsRq6TBzhxNfIMCgFHmt1y+l0BODohJchJFk0a1Jsf
         vIZvPf6QfT3NY/wAoB7ZkxJf9FOlHn/x0a6VMKMYag2RbgyMJVvIQhkRK9iksHuTgGUW
         ljmIjdgOyxMAiqh4TA1N2ZVyK3+T+06bo+55O2j/fF61QBQ5WKuvwBtU5BCaVDDDHugk
         51JXoB8xbpmqZOGiU382IJtZdZfojvglk9rRvwlS5daBRZ0ptTmDsEw+zU5WIPzt920E
         K7AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e1eTWdUf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u15si978605oth.5.2020.05.29.13.03.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 13:03:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id p30so422088pgl.11
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:03:58 -0700 (PDT)
X-Received: by 2002:a62:178b:: with SMTP id 133mr9871040pfx.238.1590782637803;
        Fri, 29 May 2020 13:03:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q28sm8137946pfg.180.2020.05.29.13.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:03:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
Date: Fri, 29 May 2020 13:03:43 -0700
Message-Id: <20200529200347.2464284-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=e1eTWdUf;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

Hi Greg,

Can you please apply these patches to your drivers/misc tree for LKDTM?
It's mostly a collection of fixes and improvements and tweaks to the
selftest integration.

Thanks!

-Kees

Kees Cook (4):
  lkdtm: Avoid more compiler optimizations for bad writes
  lkdtm/heap: Avoid edge and middle of slabs
  selftests/lkdtm: Reset WARN_ONCE to avoid false negatives
  lkdtm: Make arch-specific tests always available

 drivers/misc/lkdtm/bugs.c               | 45 +++++++++++++------------
 drivers/misc/lkdtm/heap.c               |  9 ++---
 drivers/misc/lkdtm/lkdtm.h              |  2 --
 drivers/misc/lkdtm/perms.c              | 22 ++++++++----
 drivers/misc/lkdtm/usercopy.c           |  7 ++--
 tools/testing/selftests/lkdtm/run.sh    |  6 ++++
 tools/testing/selftests/lkdtm/tests.txt |  1 +
 7 files changed, 56 insertions(+), 36 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200347.2464284-1-keescook%40chromium.org.
