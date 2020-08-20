Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQOB7P4QKGQEKI7A2SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E00424C6D4
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 22:44:50 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id w15sf2389151qtv.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 13:44:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597956289; cv=pass;
        d=google.com; s=arc-20160816;
        b=McfLnt5lUTaPZWrs4nHIDwOk+CDeGVm0PWVRultc1SlK1tZjGW/Y5d/iPaLHzEFOdt
         a2+OrqkaxhZrl5AB5DW+CRGV55EJt7ijjW1N4KijH/N1WfPqLxwyl1iCjfJ8YaRBP32R
         eHkmO2pRsr+MWqa18DD3LCjZudrUi1Y0R2N8CbpIP0ofk7cm208n/LQ3ZZhbq8JPVGJM
         WAj54l0Ml5J+KHjZ29XTfNxmuCCC4I+Je6BiM7X5p7CPCV9m4cECXsxb7YNnQXO762TU
         pBCfqAkrA7gObWDnX+hqzoVZs2O3MH8V1iQjUvHiwI3ynMFyUFmWvh9BZHcLI5f1V4sM
         YQMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gm1ahOsgscjc5lB0adBJNMMeH6otjXK8llD8jLfROsE=;
        b=IYUZnSdrkKlTQjqRpoZGwEJIwgVqP96Scd43pNxkPvY0B4+6x52+tivODstbPzthgV
         fymh9so2+F7674Swr4tfd+g6A85U8KdvCzvHUUlmkk/UxPxk9mCFCNG+As5j4fcUEAFQ
         QQOZ+AJosXcl4/77i6wytCHIpQsXsdH7ni8qBcbtN/r6bVbvS3gDrCAtZ3XLSMzRpKev
         RoEa9H34T19Pcoz/cnC7TtnwwMsktzWKlJ5o7owtAaopcqYpLSh9HGaU27hehRiv6yxy
         qOCKYeEMa9uGGdHt8wTOFBO10YEdYSK917UfKgdodk2yOOXJeS9HPVniCkCPb9U++U+I
         reUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ItQHzJgV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gm1ahOsgscjc5lB0adBJNMMeH6otjXK8llD8jLfROsE=;
        b=Q9lLmMreo7KSW8droMyPM/mD0WY7CB+vP7Aws1WFxIwe04H3kXiMCbR146kYyp2QgY
         ZinMfNsAGDFLoDM5XX6hjK/917/vmrwoJlI1r8g/eIs8E6tg4hjG4hEA0FpUMYZGHXjm
         Jx2Xxc2Ut4w3hQ49edCb0lQ3gPKd4NhLj3zBZPcvOQAmoNhBhJcCaUdzy7qxlKeYPkv2
         GyWlHZSH9bl73SXVH2IFM+5o9NXIm/Ag3KQP7wv/LGVPUoz443mLsBMD4Hq2Jo9EyweD
         zw5pOcYFKsm3U0SRxO5i0s2u0Kqe0sGoq1OL32no6hxDwwzU1artIcHRvg172cC9N9SG
         EssQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gm1ahOsgscjc5lB0adBJNMMeH6otjXK8llD8jLfROsE=;
        b=gwXU5jFoIAXgM+393RjbIKgcyLfGVCt+T2OikcP3dRfST8fBdtkJBLwvg5OzJnxxyg
         7QsH+YaKskSnt5VSVdqAbcK3GnPx6dvpZudia7w1SO0V0rOpm9YeNH/qlnlQEXSM24OS
         gqCQTQGLIOXEdIKjGjJdZh4p9gG4GQa3KEOuBiBra3OAouwsTvrgFz/eCYuUmGKxTMlY
         Z6bk1AHRB+BakvQqFBIGnQgOFUv+fb8y74qh1dA2F6led+URKsXMeEPf/EFwDS4WeAcB
         3Liyk90Tjmt8+pAPCxELBrW92E294yCFQruyCqLG/3Sj01XGORff9dGKDrLMtKBR0ZiV
         RPhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LEBU+RnRxbDIsGkMv/PVXgMTWvlnbbk5SqdNqMCnVLvf8y/U2
	KkvNavtYYgSdQZz7KvOmhEo=
X-Google-Smtp-Source: ABdhPJxJLwglfo9BnAjjmrLe+WnqHmqXjyWWONn1kgQ1yurvzvelGh/RmBPTNCXde1gEGZjirl8aVg==
X-Received: by 2002:ac8:6c6:: with SMTP id j6mr357468qth.129.1597956289552;
        Thu, 20 Aug 2020 13:44:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c20d:: with SMTP id j13ls1700920qkg.2.gmail; Thu, 20 Aug
 2020 13:44:49 -0700 (PDT)
X-Received: by 2002:a05:620a:1355:: with SMTP id c21mr269958qkl.378.1597956289169;
        Thu, 20 Aug 2020 13:44:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597956289; cv=none;
        d=google.com; s=arc-20160816;
        b=gOkq6uZc9S8Fg1UY4eNnto3CvqHZX39B4U5sWenh9SUhfenZmcUF5yBR46Ib1sh0dK
         KXs8uwTqfbiyz6RmfNk28MpuA0kajv27tOXVQsIUIQ8x36CwKkB9wEn4OjFFW0Pfx7Z7
         lEwapA4Kic+kg6sT2ut9Tus3IHaolQScZPQQiOwgBMxKH5wpFqk6UYaqEoTPgTm32iwq
         oTpz9KJ9GxWFAYZasIzzYbaQSZZT4mhZ56jnL2E2FTz/fkl+8xMuXE2lP+iULWZMubcC
         YYAm95llT/k1o/fGl/VKeBTjz+bxR1seNrCqrLjaO1fOY9lbklkAfsNkcahs7GioOy8a
         FLXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KXZ8XRMr1Gmt/6K8FfPiHZ68xI+BG1SYO5TQlLXsgOM=;
        b=gvlyhqQG1aF1IctGB56hKrGrDMPggHO5x1PearrkLyPpTXtuITl9Cc3CNJXckCE75Y
         fdKFUdIibSnqz2SsrFtc8agbnmsjIC58b1c1B7+2GldODwNCZT6TQdNjW6jt1YF6JYtF
         5SLVrF3y9UXedWm8ynrg0nRMn9nMyx/n+PpbBx/LNDUclMcfZ8B53AEHnhmi9hKzmCyK
         nCd+ahS0789WgIttQCs9VDV4SkaFElS1KH/RdUsVdJHEn2Y4mmoHLYfjS9+jbtD0ML9U
         n4o88KtIOZdNcGrfbDz1e1zeJP1XzRZ243hGslpmz6qG2EiB/h5HQg7LNOOXZggi5Lux
         hxIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ItQHzJgV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d1si188634qtw.2.2020.08.20.13.44.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 13:44:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id k18so1623089pfp.7
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 13:44:49 -0700 (PDT)
X-Received: by 2002:a63:143:: with SMTP id 64mr371803pgb.343.1597956288300;
        Thu, 20 Aug 2020 13:44:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a15sm3638741pfo.185.2020.08.20.13.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2020 13:44:46 -0700 (PDT)
Date: Thu, 20 Aug 2020 13:44:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Fangrui Song <maskray@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: LLVM=1 patches for 5.4
Message-ID: <202008201339.879ABA0@keescook>
References: <CAKwvOd=Ko_UHWF-bYotqjPVw=chW_KMUFuBp_o8uOg0wOyHyWA@mail.gmail.com>
 <CAKwvOd=ojdFXs1ceoBwSnFBzyP7PW+-AknF0WjgJix60BKdgZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=ojdFXs1ceoBwSnFBzyP7PW+-AknF0WjgJix60BKdgZQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ItQHzJgV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Aug 20, 2020 at 01:27:32PM -0700, Nick Desaulniers wrote:
> On Thu, Aug 20, 2020 at 1:14 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> 
> Oh, I almost forgot, here's a picture of my cat who helped me by
> trying to lay on my keyboard mid-interactive rebase of this series.
> https://photos.app.goo.gl/J7CtBJtHmiuzhSfq7
> I asked him nicely to move; he proceeded to bite me, and not comply.

I think this needs to be an ongoing change to the stable kernel process.
Since such things require documentation, I propose:


diff --git a/Documentation/process/stable-kernel-rules.rst b/Documentation/process/stable-kernel-rules.rst
index 06f743b612c4..928f6f3ce6e2 100644
--- a/Documentation/process/stable-kernel-rules.rst
+++ b/Documentation/process/stable-kernel-rules.rst
@@ -35,6 +35,7 @@ Rules on what kind of patches are accepted, and which ones are not, into the
 Procedure for submitting patches to the -stable tree
 ----------------------------------------------------
 
+ - Preference may be given to submissions featuring pictures of cats. Also dogs.
  - If the patch covers files in net/ or drivers/net please follow netdev stable
    submission guidelines as described in
    :ref:`Documentation/networking/netdev-FAQ.rst <netdev-FAQ>`


> > Dear stable kernel maintainers,
> > Please consider the attached mbox file, which contains 9 patches which
> > cherry pick cleanly onto 5.4:
> >
> > 1. commit fcf1b6a35c16 ("Documentation/llvm: add documentation on
> > building w/ Clang/LLVM")
> > 2. commit 0f44fbc162b7 ("Documentation/llvm: fix the name of llvm-size")
> > 3. commit 63b903dfebde ("net: wan: wanxl: use allow to pass
> > CROSS_COMPILE_M68k for rebuilding firmware")
> > 4. commit 734f3719d343 ("net: wan: wanxl: use $(M68KCC) instead of
> > $(M68KAS) for rebuilding firmware")
> > 5. commit eefb8c124fd9 ("x86/boot: kbuild: allow readelf executable to
> > be specified")
> > 6. commit 94f7345b7124 ("kbuild: remove PYTHON2 variable")
> > 7. commit aa824e0c962b ("kbuild: remove AS variable")
> > 8. commit 7e20e47c70f8 ("kbuild: replace AS=clang with LLVM_IAS=1")
> > 9. commit a0d1c951ef08 ("kbuild: support LLVM=1 to switch the default
> > tools to Clang/LLVM")

And FWIW, "yes please" from me as well. This makes things muuuch easier
to test LTS with Clang.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008201339.879ABA0%40keescook.
