Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKO4V6BAMGQEYJOJOPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBB23399BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 23:41:46 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id 71sf10259088pfu.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 14:41:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615588905; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gfig5SKU1QHRtvN/L4AMsa4Q2Xx85t3QuWRytTXSx76oIKZ1nli2p1FbdSkg5oQaAZ
         l017SEIka8do9KFwgB81BO2o4yniW7eNPUTQ9j8qV9gAdClWffEyhE3JY0tf/duxpaug
         C8m2AjHJ+MANCV0IUqeRS+hVApClkdHGqVW+kuNx+XMJIMr/dHngGZzs9SevtQ+goOfq
         8BBXXokjF1wmTTBgODGhqXhfBwxAH25FJATpfA8tXRxinfBmhHJiy6kUzZEniIa92Ecz
         hz6zPVrIZLabsf9JVdGVQdSa6cpUrcur0rIjSUPhjyRF/CBjsuxCziu4gWA27RfpYL7J
         zRRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=meUsV6H2xJ8ijCHQSsYJVXxrI4+tSfF3Ws4c82a//z4=;
        b=ykEirdmTRI9qtSvdCKAc1FzJoVErPypDIiL20KfGjWsfYJCUGT49vpEKA1L14NYvR+
         pWXBiD75F203fk1gOA3AlaJIp/jjZNjMt+Xrze6F7Z/TSQN5RW3m/0Ilsh+TnI71Jxl6
         chPPRgwtolqWHJJ2/q4fhPa5rfz2xxPTGSbub7HUPK8d2Y3dx44/bQXEN+pqsI1TiDlw
         ISLmHo6E2Xn7v9NZM2iim7b1UDHKIj8RXFX/bT1pbctyiCfmqb55NDrc2wVz2KphBHRC
         wgNU/qgh8E6y6E5ncoD8uuoKb9llwp9qutFme9I6cXCwAVB6X72AqYOzvbk+Bk9L4Z5O
         OlJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aLhrSS1N;
       spf=pass (google.com: domain of 3ko5lyawkad0mcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3KO5LYAwKAD0mcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=meUsV6H2xJ8ijCHQSsYJVXxrI4+tSfF3Ws4c82a//z4=;
        b=tBrektv+XgHkgzzmLZi/x0S4lwCBBXd/arTu4vIYG2TowluayiqrdAr9qgf/67SHak
         yCt6znWIFkD+i1ztvJ2Z2BamOIljLbyHhBpsBgMlfixR9jbwPsdYk2GD6fKOvIrfEa9x
         9V94luiSioysDhKrQf1VbOAbmoevKtqv1gQmjgWQlydyBaqxUahGx1vRFC4E0va0Q3M7
         c1PiZH6VJQmQhJGQzXILH4n2e5pcyxSmGY2Jt/nbJNcY9zQRC00la+ZbkAfUsaDr10TA
         217mu3sF/2gpwMEM6inhk1jsMzhfDp2NJ5nfSItOdSc4UHs+aEBrjhnmQKo/D6Dui8Cq
         srzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=meUsV6H2xJ8ijCHQSsYJVXxrI4+tSfF3Ws4c82a//z4=;
        b=tedvwajQQWVdM2ldwz4bLdB9LkxnFoBQ/zgR+MZCpiuysuCrgaUIhf0HDJVDFsTQud
         ccrd/UXs3N35lqDVgCs+hOBYcQygaTyEkFqCWqGcbXIx1xMFldSbBAn+JgCzKJ4UpWSb
         V81jCjoGpJYq7vwm6RaZaCv9R4gnj7ZYLPTxEpb3IVLyHs5mYX8xpBwNruZbVF9bPzdr
         BIEbEk4VgCI44L1R0iuYo4Gf0azp2CY8S/3p3TDy8v1DEaxWZqGNzxZKe6fesan0n8kk
         mcQZu7z740zeWp0FHaf+AAi9HWlp3S6DhsQ1btgE/52BL9dJSwO/y0xJHSFXGulKiJz2
         kHTQ==
X-Gm-Message-State: AOAM533I6fWTyDYvJfEFzcnXdp/Ozyfbn9eEriw4d4RA7g5gYK6GEt4r
	u4wOBimvHzkxLMOfeP1RqgQ=
X-Google-Smtp-Source: ABdhPJxMNzA6e+9praUqmRFQWO8wgvgTSNJwgP7/u3orEGZQJE1O9gorB2XkxOs8Veal5MWSq16TUA==
X-Received: by 2002:a17:902:ba0a:b029:e6:5c5c:d3b8 with SMTP id j10-20020a170902ba0ab02900e65c5cd3b8mr650170pls.79.1615588905309;
        Fri, 12 Mar 2021 14:41:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls4042086pgh.4.gmail; Fri, 12 Mar
 2021 14:41:44 -0800 (PST)
X-Received: by 2002:a63:5b57:: with SMTP id l23mr13877031pgm.445.1615588904842;
        Fri, 12 Mar 2021 14:41:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615588904; cv=none;
        d=google.com; s=arc-20160816;
        b=zaI3UbCa523elenAjzaOtPVP5/mMOd3JVVhQq4ePtLw0jlQZwREosQxgbXyG5+s8vD
         qHNbq8ldNzGlJG/n0/qIEYgxvlTKkuqyUP+lmnhDx4zOq/+uibzPyBlEgsuWpFSb8sSy
         oz2yPaQjMjUuYoDlG36Whys0YuIGIcP/urLGpEeJG9Xl8WkfNGNDv0P5w9AZ7uOGrfJI
         iA0sYiIp0d/KCycuuYmLUPfTaxTI9EOhmuOkbdZFhtimJNt3ceGkpcvR8ouZ/I42CdDk
         HpggJTPLRbGU9fRqCz7NgMY9c6jwbZ0di0L9NfY15avPQRJkc66Pw0TfOl4HHTOTItyU
         8BLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=n62ZXlNKUIkGTReX7MmHBLgk3X3V3EW5NpQWFJzdSTA=;
        b=Sb1a6o8Av+EjNlIitPWjfV+DoHi8W5JxhJQN78Wzp6vWpnnGpRUzAoCvTGrg3nNDco
         /XkTutUoBnAq33RbGh89SzGWe0fVL7d8yu6axotaapms3/xGTxoi8pUu3DYn1KmVwhB/
         W9Vag739bj4Hj6r4W8zF1LGMu/X2jvwIXs+zmKNtDN1eMfsx9O0ZLqzR2S5u8cjOewmc
         CuaS8Z33yGhSW1W1APwQbquNmAAUe2ApMvAp897BNjEuonScXzD2ZGMoljEFGgZK7RG/
         a4P6QB6OJUppIocw4jyoF8kizMLuq5PV2UJ7Dh6hxiM0AKIUele7MlFg7j6Jq7FDEevo
         /XkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aLhrSS1N;
       spf=pass (google.com: domain of 3ko5lyawkad0mcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3KO5LYAwKAD0mcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id 145si408978pfb.0.2021.03.12.14.41.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 14:41:44 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ko5lyawkad0mcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id n10so30626049ybb.12
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 14:41:44 -0800 (PST)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f1f4:3252:5898:ad84])
 (user=ndesaulniers job=sendgmr) by 2002:a25:6189:: with SMTP id
 v131mr20618833ybb.481.1615588904059; Fri, 12 Mar 2021 14:41:44 -0800 (PST)
Date: Fri, 12 Mar 2021 14:41:30 -0800
In-Reply-To: <20210312220518.rz6cjh33bkwaumzz@archlinux-ax161>
Message-Id: <20210312224132.3413602-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210312220518.rz6cjh33bkwaumzz@archlinux-ax161>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH v2 0/2] gcov fixes for clang-11
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>, 
	Prasad Sodagudi <psodagud@quicinc.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aLhrSS1N;       spf=pass
 (google.com: domain of 3ko5lyawkad0mcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3KO5LYAwKAD0mcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

LLVM changed the expected function signatures for llvm_gcda_start_file()
and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
or newer may have noticed their kernels failing to boot due to a panic
when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
the function signatures so calling these functions doesn't panic the
kernel.

The first patch should allow us to backport it to stable; the second
drops support for older toolchains.

Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44

Nick Desaulniers (2):
  gcov: fix clang-11+ support
  gcov: clang: drop support for clang-10 and older

 kernel/gcov/Kconfig |  1 +
 kernel/gcov/clang.c | 32 ++++++++------------------------
 2 files changed, 9 insertions(+), 24 deletions(-)


base-commit: f78d76e72a4671ea52d12752d92077788b4f5d50
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312224132.3413602-1-ndesaulniers%40google.com.
