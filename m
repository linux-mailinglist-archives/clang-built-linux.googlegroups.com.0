Return-Path: <clang-built-linux+bncBC2ORX645YPRB7HHU7WQKGQESHJ4B2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B0DDCC74
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:18:53 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id r5sf9405192iop.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:18:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571419132; cv=pass;
        d=google.com; s=arc-20160816;
        b=veRY/2+MwqGELsc3d656B9RAUAuDrKewIACv3vWP9tSHX64FgVxZIIdkZKnnO9NG4B
         B8uJt5PCDspn+MdhaPuK4bXmU5oGiga8Gkh7z7CJ6D+eYryZ/BC+AR+F9SffTGWKL67r
         5EHKIwpoentO+ap2aLcjDSSynSaNw8jzEk7rQaurNrptc7Hpl8C12uyFz5jiffPepHcg
         byFmXaPZIQpcXtiOzck5T5Mxjutx/2jVo7IGUsZhxhaDI7Rcc4g3r7yd+BuTuTd7SJdD
         CGM9gBiJGazH3xPt8LwdxN7/PdwTk8KlC3MPnToIwY18Y9CFbkAslidBeXgUdvrBC+ig
         0G+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FatIL1jo40jbX+BQ4aIrFTELtMUD9B972PGH2/dWIdI=;
        b=TqL50HSVSsR11wcculssLlU+Um+OUjD3dG7cQkjdLZTx4592VaavXhSTbO/34WI2xK
         GC7HWTZrwG39JnsMqIXbBa0RpMVuXuoe11XYutWr4q84UNsjDa3GYEnzL6Xo8YcY9yD4
         hTSXltuqEihFvel/VUliUYPvLMk8tpgGbZ3MamRt4fyhnGuZVYbHUdQ6HmboVNT4cCsv
         02HTQ0yoSqiJJEsOuaaLM5oEmU6R9C4GvvutA3VQtxGjleNDch8kJ2N+Oh4f+wl9sCJ9
         VOmbVB6ePA3WqGPtYMMl5zHTIRa7AXKLdpiqovObyLg+6B4Y4mp9/QVhXsZU37JX/UWm
         sVNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="vsQmN/Ap";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FatIL1jo40jbX+BQ4aIrFTELtMUD9B972PGH2/dWIdI=;
        b=RrMppLXJjWLWKTJPR7mwK+ogFGxzkydlqITAZ5RSQk/AW5M0BvFOLvXjy21jyrIABm
         fqusdBqBzlOjZX6yS1PvvkalSyTYaebpDzAtvWx0KKXNg/ufehqD0qGixgXS6m65xZJO
         Pm1cm+BIJov93aw6C6opbH0yd1veA5QlIvwjq3GqQOye6oH6ihe4D2mUOSU1AYd/tfG0
         nHUU7COrPGBYVliV+1jTQuoD5tFVPrfPWp1p+nOfBMqXXzxULEd00rGxm1yTyMdbapQC
         rey+fVw8yaoD9nHIwgcaw7RmKe8VEHM/W5y9GxbchyG05lmJ31yfw/NkRyyO0Gb3iTTP
         u7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FatIL1jo40jbX+BQ4aIrFTELtMUD9B972PGH2/dWIdI=;
        b=PCR6UBDluPBeVBHLpngvAFCvMy3aU49nqnddaQhQDXWONC7/62lY8ddNnrDFSdyMjk
         Y4MDosRVzuteJ0N9wgHrXB4g337xHBSlNiJ8qj0gybvi8pY3Eop1u73GcBVT5+WZnsDB
         GcswAUHaD6TxGC8egpiCfaiUoCPOeEEBVygsoD/G7uOdrQBy7aFsJPII49f/Djzhma0+
         LBEdoBSxjsEnJ/W7YA0/0or2WuzElgoLExsj7BFiFH1JQL13IpCFdb9bY40PIOeUteyg
         jac7E84VshTLy6oEeIUKlIl2e2C/w2KONmRRFDMb5Vhyx0W2qLphfWPhB1xw6GdduMxu
         fS8A==
X-Gm-Message-State: APjAAAUR93Ynq+TRTtE8q0Mgvf3DG4CZagLzSDesy6MMDhb6ZiYmTOyL
	2eRq+68rKu5D8MgpGYlfUVg=
X-Google-Smtp-Source: APXvYqxLr6IM7kaPOZjDtoAaoBqG3JxoWCksHXnKWDjAv+mdkB52Whyrp2sJOgbW9dWtOl7Pp/UVfw==
X-Received: by 2002:a92:4743:: with SMTP id u64mr11912031ila.239.1571419132524;
        Fri, 18 Oct 2019 10:18:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9145:: with SMTP id y5ls1474829ioq.11.gmail; Fri, 18 Oct
 2019 10:18:52 -0700 (PDT)
X-Received: by 2002:a5e:dd41:: with SMTP id u1mr9656681iop.230.1571419132167;
        Fri, 18 Oct 2019 10:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571419132; cv=none;
        d=google.com; s=arc-20160816;
        b=TLeXZHu93KX6cVAULkfEZqcH/y20fQb2VJRPFspdspMTrE8++pVpoC2xjnA4pB6Hm6
         S/sQ9SA1ELzBF3K3a9s4Dk6oHR1M7jNSv3sEdo+9sdXVPUy7nJHsewZRnfGzYvLWpf9G
         +cBmNJPvn2IAsSwtnml8eY3yiV0Qrh9yK5vVEtbPuljAfyTo50oG4/EEr+rE5xD27oMg
         B4DmT/fctgljWUEXQEbSUHwlTbWhOkYXibyUDgz5uCDP5uU7Sa9yf2SCFi71h7gxjQL4
         L1Uxc2h5QnVLJzOVNSH98xZ/VF9wT3gKjdTLvyV5kLAu7vvyaOA9XqhJyf9YefEX+cfe
         IB0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0HIzf5D0wGbvpmxHvIyOvn+49UWE2lHPyTZCg3y02sw=;
        b=NPQrXUq0aRJ13+BQnd2MIlElkWvyZo7BjgUGeTBnRtgoOSGGjTvHvop6TQkJ6EvwdY
         z0i6ZvzMnjVhvmarIEGIsXD58TOcGkGMaqIJjRJJXKnanIeZm075sgYN2Pdp4E+m7k38
         gD6ivwwgqtIz/rTCa+6gEwHKAbTt59lSS9w2xyNaQ06RwBnUlHOxMHntQbByOwjCd2+E
         ftxBczQVCvbkB7CJ3pilEY/3P9Vs+jEiuptH38/pLH2gvILfmQuTHqzWXyGECS9Lbi8Y
         i3NnmaS+H9Q6ccNWfncperX1QimIrEDKTElYzS4Ha42Wrflj+k2pYuyr+gEEX2sEIQ1C
         zbZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="vsQmN/Ap";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id b2si388120ilf.5.2019.10.18.10.18.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Received: by mail-ua1-x944.google.com with SMTP id n41so1949043uae.2
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:18:52 -0700 (PDT)
X-Received: by 2002:ab0:6387:: with SMTP id y7mr6108565uao.110.1571419131321;
 Fri, 18 Oct 2019 10:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-19-samitolvanen@google.com> <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
In-Reply-To: <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 10:18:40 -0700
Message-ID: <CABCJKudM-Jupwj9eMMjg3rb1=6rTDBEcWi-KkzPSeSGd8tSxGg@mail.gmail.com>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
To: Jann Horn <jannh@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="vsQmN/Ap";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 18, 2019 at 10:13 AM Jann Horn <jannh@google.com> wrote:
> These things should probably be __always_inline or something like
> that? If the compiler decides not to inline them (e.g. when called
> from scs_thread_switch()), stuff will blow up, right?

Correct. I'll change these to __always_inline in v2. I think there
might be other places in the kernel where not inlining a static inline
function would break things, but there's no need to add more.

> This is different from the intended protection level according to
> <https://clang.llvm.org/docs/ShadowCallStack.html#security>, which
> talks about "a runtime that avoids exposing the address of the shadow
> call stack to attackers that can read arbitrary memory". Of course,
> that's extremely hard to implement in the context of the kernel, where
> you can see all the memory management data structures and all physical
> memory.

Yes, the security guarantees in the kernel are different as hiding
shadow stack pointers is more challenging.

> You might want to write something in the cover letter about what the
> benefits of this mechanism compared to STACKPROTECTOR are in the
> context of the kernel, including a specific description of which types
> of attacker capabilities this is supposed to defend against.

Sure, I'll add something about that in v2. Thanks.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudM-Jupwj9eMMjg3rb1%3D6rTDBEcWi-KkzPSeSGd8tSxGg%40mail.gmail.com.
