Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4PL7P4QKGQEDVXDYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCAD24C7A2
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 00:15:14 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id s29sf2538709qtc.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 15:15:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597961713; cv=pass;
        d=google.com; s=arc-20160816;
        b=XEEW/+drK4eUUpUt6Xq52zK/3MAbLvIQKFgrYXbg574V3MjWMi/vDf8FE/ridEA0Ps
         w1daaqdc5JcEZYo9avtqmG0cvJa0crgMRH19pFwR38uUCMUy+WPnaZkzFgNGI1CPbob4
         vRSHiIp8xZJDmUwFr2hg0lQHqRUPDrB8PlSjuRZbZmlg5uSY9yhOAAIt5zJRtUIoTbG+
         7IRW5SGmUVJTVK3+JjUJ+KgkThNhTQBEkXNGFpX6kxIuBw3Em+7ggrdJleVGjuy127aw
         fY10fwwoQX4ag/UAwRSBgvkaembKEVS3mGhkfmgivcx/J+cwc8KjKV1RAaZERSay6fP3
         NShQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=CV/RWCipuD22+cKser7zX0XXqteX7HKfPpnJfkUourU=;
        b=L33cyPS1krCIEH8cm5fVFJV0RIQBj5u8rSvkz493nsclsFgKO2Y9H6l8QZ8PW6thKz
         pZYk2RozVD6esIBal/hjLdMJRsp/y2ZoKioNuUrzZyNh0E+hCJkZRig6B4eXGm150Q5u
         N4rrZtMNTBskazlVJOc/s0up1xcC9Yw8Zc9TjfpEyrydIOIPU3hxHz/6LmUqZifpwSi1
         ENS0861l8GEdYSn4Ot9bB9qQmnwZD18rweYwUDM6vSLflEHJvROColrCulBH+SKE0OyC
         lFPiNpJIvwWq8JSRwZpgxGxiy5u/nle107qKhXl+2fNqeqOv95qdyT6bYZ7XeUQvlqdB
         GLBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QEoArzwv;
       spf=pass (google.com: domain of 38pu-xwwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=38PU-XwwKANcG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CV/RWCipuD22+cKser7zX0XXqteX7HKfPpnJfkUourU=;
        b=fasUPAlijQgmoy87lMq5AALAF+263JrVukgGBTCho5OQYw5OyhF4wJqfTACGHXUZvE
         Iqm92epweJuBkH/3W2wGTtwqGCIg9yDsq4vv5/TA2II6XS7/DyDojitMaIZvAWZ8LRJt
         OtsaafKLsZKsbTTyWGZS+GGVMIvkafQc5df900mmsxAU2izO+ckOYFLDwV+ir3OdrIhX
         cf/AOwtZCfSfTFfAH3ny1zClEd1fUk41pkPKojAdh2AGDzlsNQkBvz6FWY770B97HwNg
         bSJqB2gILtFR1rlPAmWM1jcG3LoJ2o4OY8F2o6n2uGl4aeOeqjgi/SW4NDqKkoeKhnDW
         2edA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CV/RWCipuD22+cKser7zX0XXqteX7HKfPpnJfkUourU=;
        b=DPifFFCO1iJuDG2/FBQaxrmPZ7wAljrQzp7g9/LVQ8tAg2uYFiit5H9ZS0ekCvl5s2
         EqaVmQE7VXohXZjeuZIkUIsObt2Yt5UZ3bpwEejv4siOx6UdWJfq1PlbCda/BsLdhfF1
         z4gKfM7EqgxtC8qjkOKKMYyCJM25OMRxcVt0PWlSXrsaUVpxb2RXkRIreODWxkboM0Ts
         T4qozyvzlZ1gEkBAnObv9x3hFINT4GdtG1VDnoGdAZ19+6StwfHHQpkeFT7uoGQK3gg8
         0VxkJgNfuEotkuq7QNrHdOkQ4PXvwW1hEkuehIP6L/bdk4gbRUy9EPYY0N3R3r5lmzdk
         Wb8Q==
X-Gm-Message-State: AOAM532nemYANDrsfw0QpjAJnrl2mImbHK45SjhSmcIjqWzGLvXe/PG8
	mCPuLA9aiOOcp6wEl2k94h8=
X-Google-Smtp-Source: ABdhPJyrBe/my64f7Uw8UWmU+ag/b9dhM5cJFulFAUlc2aUNOOjU2zS8EtTc2tzZi3dk5UWuPPJKgw==
X-Received: by 2002:a37:2750:: with SMTP id n77mr124618qkn.26.1597961713475;
        Thu, 20 Aug 2020 15:15:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:8ce:: with SMTP id y14ls42833qth.7.gmail; Thu, 20 Aug
 2020 15:15:13 -0700 (PDT)
X-Received: by 2002:ac8:c8c:: with SMTP id n12mr705373qti.226.1597961712988;
        Thu, 20 Aug 2020 15:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597961712; cv=none;
        d=google.com; s=arc-20160816;
        b=BDA2lQj3NPRqVFuxj7X9m7R19p3TVVxC0KiSIntqI5DqLBxO/YTzaAQaUBS1Zv2z0l
         gTksPw4iCesd/BoPLhTo24JHPD0nr6EoeVyh4ItNFmcsprc1bNxcGyvS4rVZz1jqW4Cr
         Aigct1YqGEEiFrnajt153ejqExwRg8tfL8eZls/NH4q0OwmcWuXHIYioFncCsYduDK8z
         axuz/51zqV3RVcRMhKbihPsKjMu0s2O82ThLnGjUsOLO28buyO86Qmf+hd8EGOupgfpl
         UhaaYyUEZG4uCBwT9f7EnaAVgqtliVBBJOJXVYFaECnGETLYFCoJ3TG0iXcfXpAVW3Fh
         Cu/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=OgYs9wBAi2Q8Z6LQ8VFTN49js9Ku6BxLyyZ6fl41960=;
        b=FrB8vYEzWbe1QTHD5/AadMSPPpzw7wTcn7V0FayHwVfz3Mz8VYl9ZqiyqIdRtXk5ny
         DmAm3cxJMneSN3LHvoJ0JS4hJgDCgLp+klkcevVfyafVx46Wxt7Ki2QBMKnsXulLxg6j
         duq8FgxIsdKYrQfl3s+QvTPY66gtvUOtbMy373pcsLflcMspQ5GuqJqO45Bnbq2ug6E/
         FFMVQpkWvrWlifXYwCKg6lsRLry8KUXzsBkDuXBSbpFsuvpbQhqVpfnQzVJmSj1h8wCS
         eCDAC1Y0IPZBPsYxy8lrGok+0zXMMIanBEU356arLiUKRi6J+rdN9JKANVtP0ar5E2+r
         FmjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QEoArzwv;
       spf=pass (google.com: domain of 38pu-xwwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=38PU-XwwKANcG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id z19si3652qkz.2.2020.08.20.15.15.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 15:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38pu-xwwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id a14so42392ybm.13
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 15:15:12 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:6c86:: with SMTP id
 h128mr491840ybc.115.1597961712598; Thu, 20 Aug 2020 15:15:12 -0700 (PDT)
Date: Thu, 20 Aug 2020 15:15:11 -0700
In-Reply-To: <20200820220210.GA14894@embeddedor>
Message-Id: <20200820221511.3328330-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200820220210.GA14894@embeddedor>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: Re: fallthrough pseudo-keyword macro conversions for 5.9-rc2
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: gustavoars@kernel.org
Cc: keescook@chromium.org, linux-kernel@vger.kernel.org, 
	torvalds@linux-foundation.org, clang-built-linux@googlegroups.com, 
	natechancellor@gmail.com, miguel.ojeda.sandonis@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QEoArzwv;       spf=pass
 (google.com: domain of 38pu-xwwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=38PU-XwwKANcG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
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


Hi Gustavo,
Just noticed this on lore.  I'm curious if you'd had a chance to test your PR
with e2079e93f562c reverted?
~Nick

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820221511.3328330-1-ndesaulniers%40google.com.
