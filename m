Return-Path: <clang-built-linux+bncBDRZHGH43YJRBVX7Z3WAKGQEKFHEU7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5703BC4249
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 23:06:31 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id o188sf1957130wmo.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 14:06:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569963991; cv=pass;
        d=google.com; s=arc-20160816;
        b=r7EIRXmPLuMgxQ3LHaiyMbK5G9VN2Q4tK5m5nrOIGPh9JYroEAxiAtikBaIXu2EJMQ
         ZWGUDqnKyVOxQ9oxclPuL7JOz8tt55roGipjm2ln2PCPoIGLYsqvUc7Wm4OQSM/4JUkP
         VkUQKDPzCHmXUYubRx9RiMi0uTvB4zTACNziNl9PJSWuq+zs41ag8BFdA5yGRD3/KWXg
         JIYemjXNSnUwVIHKQrQ8w+kIRJBmUjheFHTkq0LVAOuR8Ap2rdhIWFFYSPnaqRVpNQcM
         naZkjuewRgQlx+LCGkF+Q0kBpp4CfjbSP+UnR4CWfEmjj/FxJx+jINxMqMlHhxUYMgFi
         Vsxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wAeQy7sp1D0HKDAwZGipEotGT5n3RkTxrwrYUDbc5/c=;
        b=f5uWp2h+gZA96PVQ4uy00l5yzQ25UwQggSNXgTPTNj5r4+KY/lNQPP1fhTXYrkm9fA
         7Q5iGzzis1MVJkKw/LSAkc8ajv5hwHZAerbnNsTR6K5ICEYJ5rBYxiW9piwGjS6coBYY
         DmrhuG9ISNZ4GLZj4soCCoCBasnXhC56uww8g3DpX2LvWEohu4t1xsbxoyZphSYFy6Af
         9U5Z3dWLVAu6EVijnawkVBRTNimskWTEhutcVnyUGG53fszrlhKXLndiyx46r6P/gcLy
         d4xU4Yx9cXqMelG6+PVUgP9iHo5AjpCpCitRpaUTmDHbnqFrxVTd4Wh0gqGLBURRyFrU
         hVZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YXMTzPqY;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAeQy7sp1D0HKDAwZGipEotGT5n3RkTxrwrYUDbc5/c=;
        b=TBaMXRh41qlroWwjmQN5DUQhtRifk97Gm9KDs6Wm9gypUCFSgDgKvJYEYWRCvtUOD3
         KV2sNc4+rjB3h70xAgyjtHJqfSXPVtjTZkpWhahiJYP1ZSMTkV8z4JW/cjVeVgOhP2xU
         bMHwAJLzc1DaRbeFmmVqwh0drYllo3dZLVUydssz8towX8DL3qD5OLVvEa4mOj9J1ovV
         xg8THbd4X1BLts2fhTdKxQTWkvjdlyjZfSN6J9AQ4DQQsOw8DjVMUq5HtFDhwF8eCi7p
         HzFR9eszL1z4M9FF2KCCILlHiSqHohLAiZEbp/Mg8CwYj+Ov2OMvuYi2HZ8Zjm0pDuB1
         ehGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAeQy7sp1D0HKDAwZGipEotGT5n3RkTxrwrYUDbc5/c=;
        b=Y3FDtFv7rqoYou2WYcCvrtzUZULi9DQovxCPvkBE38kMYR3KI3eqltT36NgshPgQyy
         LtCUiNUmexJ8enyAnLNJVY5XZJ6nxhjey1HB9uKDuSPfj081xBqmjHk9jiAd7C+wvzi7
         dIaNkWpfUHUyKnA3LvLod2aQxGVYy1WEdFExdqmnwUXUypExR9Wcdk/jqHpyeZygiOsP
         ygc7TQh+/ba9csfewZs61xiLge3BqWnYHmn8TI0Zm8vxaqd1g+T2tgs30eWeQOOj///7
         jfQ3A7WrMEu2ExsZir+uI58aBORGwHbp+5e7yZXHjzNv3IFcaaK4798zv0AeYolKJDxT
         SdaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAeQy7sp1D0HKDAwZGipEotGT5n3RkTxrwrYUDbc5/c=;
        b=adBwstFwzkaNlqbzBsEtPQJNp14KfEI3zQxGkBCMwwbaIdkQklwQrF1szcj8fuRoR/
         6UpPYSBuB8S3VQt654ETTBXaVCpTKG4frUsCcy6Y2PCxQ4yJ6IvvNFS/ClOSYF32Qsjg
         HvVggHnbejx5RzgEjazOLg115eaRTwbX3p88b4mvwgHI7EEGx6dnaRC4FUJ+b3LfTet3
         bXjKsX7up7k9nSU5DSOzKOQmqU/E/ZKe321gnXKvJLtnIoeWSRg1BL09HQYPjnDnqy+n
         mOQ9ub7bFtPQy5wqC/Xpc0/A0qCVD+2NApKz/5QHDLJafSzVYlyYkoSlZwV/Amw8dC+h
         lCNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsHRhG1vfYDzwxE1q38BWlOWOpWg5DNBBYOe+ygXR2yvF6VQJ/
	PF/W6V3aDUgfIp4if61Itt8=
X-Google-Smtp-Source: APXvYqxk8vW9Ki4/Jk2UgXenUKSXPMR5ESMghIcNSYAtf4YcO52mlmDBGcfkysgEcVyII3hVHuBrUQ==
X-Received: by 2002:adf:f0c7:: with SMTP id x7mr20267137wro.2.1569963990967;
        Tue, 01 Oct 2019 14:06:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:d18d:: with SMTP id i135ls64453wmg.4.canary-gmail; Tue,
 01 Oct 2019 14:06:30 -0700 (PDT)
X-Received: by 2002:a7b:c404:: with SMTP id k4mr68363wmi.90.1569963990430;
        Tue, 01 Oct 2019 14:06:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569963990; cv=none;
        d=google.com; s=arc-20160816;
        b=Ll0GKqmKpcVMWLxlxNUaBHgUgZdCQLxzjFYVCNco+Q6vmqgF8ln14aUrpJCaCrEpEx
         sk+bahAxtrVgNvOmYUxtNYwXR2C6FSz4gyg3QdNd4oi2kCNnEkImDW6neSEWlZvlbj6j
         tA7CL0JOpRs5+9iax5rY6nL9JcLgnFx1U42nisslTn0tqEgiFuy4peAYOOZDeLn82qVp
         lBpkle2FHgpyZt9Fco4qkxIfp0D4pLLCuQ1BfL1D89Lued2x5bL0RM8pH0kicVgNFLc7
         x9lfA+hzKNhR+zskVnp8/9a494SuIyFM4/qBZd12s7NLmgHhlemcRxAlm99LBXzcH/I8
         mTxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m9L27m8MsIoj3QMvk1OHmCkQODcTde/pPqDz59ZpNOo=;
        b=rZpCVypUAQTkBFDhCFMgf2KXxRXGns4PfyHxH5e7dV1y8KVxU8tgya4DEzEp9qAtZi
         eo2zMZFlFXg5mtBbmTUg6JTWXMjme8F0RcdDv5AESfG1UlwpDfX75b9XBFjdWHpHkuUV
         DHR/Ecxex1eX26+GYyc9dxG/Fmd9t1hLfmVAj7hAcLftUEtARROFsW4sKzz6CSXq7yaP
         Qhiofsw9fsR1anqtN0BPyCHWJY5hOWMzwDrFq8qgnZPchytYivkbg/6KrZKSkvy6EvJC
         PRbAhBQBqxJ8pJ9l2pejkPi5J+yqhUu4INFKEEulbC9wjVo8IxGQOLCDejJGlgTklMbi
         AquA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YXMTzPqY;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id q185si334575wme.1.2019.10.01.14.06.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 14:06:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id q64so14858151ljb.12
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 14:06:30 -0700 (PDT)
X-Received: by 2002:a2e:4704:: with SMTP id u4mr16942430lja.203.1569963989972;
 Tue, 01 Oct 2019 14:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAK8P3a0eKOyJRjp1P8HWfSLWO=d6Y3befy3kQBgTPVX+g_2q4A@mail.gmail.com>
In-Reply-To: <CAK8P3a0eKOyJRjp1P8HWfSLWO=d6Y3befy3kQBgTPVX+g_2q4A@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 1 Oct 2019 23:06:18 +0200
Message-ID: <CANiq72nZRc5TXxhXSQnMhaeQaP2RuDpHf+1CvC8kDV8_m14WeQ@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YXMTzPqY;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Oct 1, 2019 at 10:53 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> 1. is clearly the most common case, but there is also
>
> 4. Some compiler version (possibly long gone, possibly still current)
> makes bad inlining decisions that result in horrible but functionally
> correct object code for a particular function, and forcing a function to
> be inlined results in what we had expected the compiler to do already.

There is also 5. code that does not even compile without it, e.g.
_static_cpu_has() in x86_64 which requires
__attribute__((always_inline)), at least on GCC 9.2.

For x64_64 it is the only one case I found, though. If you disable
__always_inline everything else compiles and links (in a defconfig).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nZRc5TXxhXSQnMhaeQaP2RuDpHf%2B1CvC8kDV8_m14WeQ%40mail.gmail.com.
