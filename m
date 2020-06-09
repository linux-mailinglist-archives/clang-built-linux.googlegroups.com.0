Return-Path: <clang-built-linux+bncBAABBRV47T3AKGQEVTII4XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A161F336F
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 07:29:43 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id f21sf8972761otq.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 22:29:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591680582; cv=pass;
        d=google.com; s=arc-20160816;
        b=CpSDveM9uS5PYmP/B2YWRnwdWSxqz0QTxgsgl1XLtS64PjGzlpMgJlW+TUE2jQ5hbe
         bjSDQjSR2QsgHMHRfSL3AaNH50VbiDjxXSop4LhmN7j1VH6b652jiUhPSDJmnjz50zZD
         cjvUsotJ4M7jLD35kTwPY5t1g1y2eeTJaypm6K2OGlr/2Disa2gWoFX75KT9/nNt+8r+
         H36EDG/py1hSHOqkfcermKo3OUdc0nWqlwtwmYpyarvU9xMxVWrsAInIyTuzFNYZRq7a
         Vla3PYWA2H0YoZYuznF73Z2T71GiY/YFyBNXv1+onOZUs/jxai1bPfSDLmWqmLXYDH5B
         W61w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:references
         :in-reply-to:cc:to:from:mime-version:sender:dkim-signature;
        bh=4TacenDAM5OnW9Ub5t+7y54lBNUGDvRSaWcqZ+/zYhs=;
        b=ca0p2bFr9rljHRl19pOCOXd/mdDiM1cKodEXlLx6QlR15vbSQikxQa8QZEecax6W0H
         11AFEl3C0OCKW8hfAW8Lgta23SdfDXqD0GZ70j+581Cb8HfcyUA0UmT+tZ/XQSNY/WGg
         4MRFs81jj6AvmFcaG5c15fCcobUPe2+Wqm3hoQ7vA7ZgkMRMw6jP0V+zOU4IEl0M69NU
         1Qotm90dXlqy3pN2f2BH8Ns4O8XHSpv2z+WmhiJf+GehEhsOSYkEtIYt56ASZxmix2ze
         iBy9MWSV4rraBtlY7EbQg+E/PXiOvFxP6jia8RRjYE/+uNMNcmqs8/rA63cbr25jPxHy
         srQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:in-reply-to:references:subject
         :message-id:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4TacenDAM5OnW9Ub5t+7y54lBNUGDvRSaWcqZ+/zYhs=;
        b=FEMicGmRBotL67uLcGAXVGHq94PbUkM9y4kcgtRRW4gjko+UTjZMfkqgGsM0SkDiBV
         gD7+U3a6MnaL30sPcMZwS1LZFfzzHVO+uvXybl6QyhvOhTNLOMa2aBJAeisP2XXX2L6I
         JJRhZPkK/093eDWVqJIa4BM6CLQDWqZL35XLBNOG8iSQHUlCukcda0UqiRHSCMln+i/Z
         fQYTQrhzlz0mXKGQhFjC9FKD4huAMCSlN+9PZCrV3+EYo4pWAgo0tx01Rn/q3vYdS6l9
         mmxkUfivjI9hWxqELUIZnHDzTd/gyT8AEmK1r9j7FeVXVx0WKHyoguEi1qrLCAF8Xvep
         SKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:in-reply-to
         :references:subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4TacenDAM5OnW9Ub5t+7y54lBNUGDvRSaWcqZ+/zYhs=;
        b=Nd+Vh7se4C1hNHIrTinBstjaJpPzwpVxElzFmdVfLuKCUSURvxJz2UV3HIzC6c4NQS
         FJ2ylxKPG223zFV89Cs/wNIWvv3+RW+RR1em0fGbQ3iF+RO1gBziJj2UPZZcJgJK3O+2
         FwYRo95lSeLdgLdQj6IP06SPu713qaKVDp+Ls0xgokb4cKoSm3lZJwBhn9pjprvn3DHQ
         1wbs00lj5Tm28revJVSzAUyBV+uGHYU2EHKENDHo3MmRm1LIvBVUHCGh99u805sbYwom
         b0qtG6c4SB1fHoxQi7DztgBLmqt9DP1wt/pyBG9h+yZ5gKzAGdL7F/xfXmFinlfPyYYX
         mDbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ExNDCH5/uK2u3RCEBS/eNzhYTlCcTUv7eSS1477MXzNSo4J4p
	Tu1nXAlViKFkyT8i++b29tM=
X-Google-Smtp-Source: ABdhPJwr0zaGDdphv7HHmqJddJ1bBGVnNoGJR/lvSf5syjrdxs++p6AKmsAOTgorKBHrOugZDLR77Q==
X-Received: by 2002:a05:6830:134d:: with SMTP id r13mr19990784otq.264.1591680582250;
        Mon, 08 Jun 2020 22:29:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls4023835ots.6.gmail; Mon,
 08 Jun 2020 22:29:42 -0700 (PDT)
X-Received: by 2002:a9d:544:: with SMTP id 62mr20985400otw.197.1591680581964;
        Mon, 08 Jun 2020 22:29:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591680581; cv=none;
        d=google.com; s=arc-20160816;
        b=HxSHpK1aGKFo745f1Y6BKbP67b8/ChS8jFc8EKhDKh6+fP/bwdStw7rVqf+CjVIYoa
         V1/yjBiCsa6iiMsi85skZzqUKEw4V/ZACQlaJ4sHug63e3ZzL4yaQVURPf9d2y3SHJrM
         4VzQR97gef+46XDyNFjVobb2ferNYsW6nu0NFvxI0ynhJyMwgihWMqXRHnfwQhH6vRZM
         uq6tjGyW4CWjZsTc/s53ibhHZHJF03owKQKKHT5h+QOmrH8Fq0OHTcApSQ181CpkLayx
         vtSZBDq2s6DT+aL+DiIeAEJDm+ARku1FPWBPls/KA4qGw9gLDRGAMpq0E5jAWJvuti5E
         U72w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:references:in-reply-to:cc:to:from;
        bh=l+AlOuAUHQff+lEwuPfHCnCiG2PFZqU+Itz69g0/pN4=;
        b=yNUNj6RuHbvl/AEA9YYZSONQMWrzBLtWNQw9NgabYeI7JYH/6mK4DwxvDyXze1+wBk
         euHHsWcXfne96QyMYySqGQn2CIrovChtInxpELCFCmSVIkv+aoicbuT8XPXptcRj+4mP
         Kqzyk7BODxITDv2C2fhbX1uxATT93Ge7uyZqzvB7Ytub2Nr4OUDBTMZjqNLNTEvlkmND
         5Oreq/vHm6fFnCrpkZ5co/te9fs85KfEvar3OEi0HHRQSE826QSSU4xOx0QWCfnGnz5H
         BM/XbvaoXs5AAP0hq9MNfwE1/HYZLTiqeCpIppIdpSwZmpWwFQFz1IfVVpaiM2KBxect
         0EVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id g38si330556otg.2.2020.06.08.22.29.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 22:29:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 49gzFf057Gz9sTl; Tue,  9 Jun 2020 15:29:22 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Paul Mackerras <paulus@samba.org>, kbuild test robot <lkp@intel.com>, linuxppc-dev@lists.ozlabs.org
In-Reply-To: <20200518181043.3363953-1-natechancellor@gmail.com>
References: <87a7254bxd.fsf@mpe.ellerman.id.au> <20200518181043.3363953-1-natechancellor@gmail.com>
Subject: Re: [PATCH] input: i8042: Remove special PowerPC handling
Message-Id: <159168032784.1381411.6982899186952383628.b4-ty@ellerman.id.au>
Date: Tue,  9 Jun 2020 15:29:22 +1000 (AEST)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
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

On Mon, 18 May 2020 11:10:43 -0700, Nathan Chancellor wrote:
> This causes a build error with CONFIG_WALNUT because kb_cs and kb_data
> were removed in commit 917f0af9e5a9 ("powerpc: Remove arch/ppc and
> include/asm-ppc").
> 
> ld.lld: error: undefined symbol: kb_cs
> > referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> > input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> > referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> > input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> > referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> > input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> 
> [...]

Applied to powerpc/next.

[1/1] input: i8042 - Remove special PowerPC handling
      https://git.kernel.org/powerpc/c/e4f4ffa8a98c24a4ab482669b1e2b4cfce3f52f4

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159168032784.1381411.6982899186952383628.b4-ty%40ellerman.id.au.
