Return-Path: <clang-built-linux+bncBDYNJBOFRECBBCE5WXWQKGQEQEI4DQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D32DDE478
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 08:22:00 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id m68sf699038wme.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Oct 2019 23:22:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571638920; cv=pass;
        d=google.com; s=arc-20160816;
        b=JhvSP/7kkiq1S+TQIygYZxu4zBLd+ZjnHDhx5tQ/koP2b6KGgJcNQk5ATJLIm6MTyM
         LhIQCPnbwL8kCGrf2fMOVI21yTgmFEidy1wq5SIhJvcADOz+tfe4f/8N9mvaJesIBqwM
         O7KOmTsojBw03v/wfVTbvI6YoS+vg8kni+gccoY7YUw+TkFaYwchN+iqZaomoEPoBZT+
         qT0AOm+oCClpkA+dvui5umxsYI2R5NfJ1W4VxFNOXvUSZyelQ3g7Ivk1q87DhCE8vj/z
         ANVtnDgRSyorJjeJknk4FhzU9ZJZ83DuK606r3nLLrV6mDAUhj2raLl1KF5cwyoWJ4aX
         5IBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=r7CsAaIwgoZ9rR3BixRI3QUQ6SWyfLjmA0zb3/r2wSU=;
        b=EpBnThAqm7OB8+R2IKJKW5q69hUfRTG4jFYo/vAopNfijIeeEP2YT+64ECnrySrqYB
         x4ry2SdEXf168isQQI+qlxCgOylkFSDJEw8lRyajf4cg4nSL1EgY8o8/0SMPdlpWgv2Z
         CYI9OCTGhcRXAv8vwExcs6KaZqd+VbRlBa4xZIskZDd9Ko2PM3OcUPjrxjH+Qoa61Jka
         DPWE53AOTj2ey+ttLf4Pp6dQtGJZGujDfUiZtgVFim0IFrIG5Y41Ptp59VBwq8fEEdAJ
         fBOzRmrfuaXh4f3s+LSoE+gd/+TN2RS5ly9OsspYWBEbomYc9A24v2MuqoceZlZ+ou4D
         xJfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GjbUSEjv;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r7CsAaIwgoZ9rR3BixRI3QUQ6SWyfLjmA0zb3/r2wSU=;
        b=HlXbUlkAF1m6s8wPAZhNJDy4iLrcgOUH2meZ3BF4vSRLCWfzhJNuiOYTKr6uKs49ux
         3eFfbBAUly9GYs0NkotlsK8JRz1aESqkeImWWj6h9iatp0hfcUx6rp+eRl3cUvIRnQEg
         AjLOqpwiB73UM6Wi6vjZLCv1Dvg12+Z51iW/qmmkyy2oakvCVygn9mhZA3wRvFcz3asq
         r9CQRLIwh1k+ICk09JcsvOBKF095a823y13bNp2u9ZrFaXQUFdMhrCWUb21ZguPyPXTU
         H9sPG8I5EH+pYdQjRLZCMvL99NPR4Imh6lF1hl9nxyxMnyPGZkaNdVb0NDl3Va9mdnGg
         HF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r7CsAaIwgoZ9rR3BixRI3QUQ6SWyfLjmA0zb3/r2wSU=;
        b=uhwHxuFm+hWEBIcE2xglBMI1V44l0lspbw4N/wT3N5c8C6AekLl6932bCVWw4TYKfY
         v4fH6xTxQy26FD3+GLcUhUlZ4IhRhHN2ExmO9UrZB5n5+kh1ow+xYZu59dpg0wy5f+9y
         5yNoU3eborlyYwG5ZepEPA6IMV/pPxZdj1rfX8JdShfEm1mKlBaqOg0vgj6wJ2hr66nD
         sByf4TvGQWwpWJbzRYWAO/cLkpNoevpdDbC/dQs0moKG679QMJzmERgMlxGdDS2KArza
         WfNuBAACxFFV7jw9pmPFkK1zoqJyY0CNz+1U5qjaZs4k9PGExbsUDbB/GwhUvDuGD+1p
         EWCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU/4sAUa57XQvaFwG5BqOwYaAthwL3Qb4XPi2o9GnJQrF7rUvs6
	bcibDNBopUZoxaW+0rsobac=
X-Google-Smtp-Source: APXvYqzc1WK9tujOquLo4XjwOCGihq3m53xENP7LGWlUIocB/AER4aMQt3xWcoLmRX8ZeqcrJpwJZA==
X-Received: by 2002:a05:600c:2:: with SMTP id g2mr17107496wmc.163.1571638920176;
        Sun, 20 Oct 2019 23:22:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ba04:: with SMTP id o4ls6372377wrg.7.gmail; Sun, 20 Oct
 2019 23:21:59 -0700 (PDT)
X-Received: by 2002:a5d:4902:: with SMTP id x2mr13360764wrq.374.1571638919700;
        Sun, 20 Oct 2019 23:21:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571638919; cv=none;
        d=google.com; s=arc-20160816;
        b=zRtnolKxWs9NjobSKAhokgNICmPt4wjvcB9VaOKrqWLVbo1ZLtyeagmGaPxDYDABJ9
         1F3c2np1H/SouJ/mjtrHckMVSWkG1KI5bLPsGX7O83iLc2fkYxOqWbbJTrAi4nBqL+Q9
         v9Uuw0tBlL58VAgjpKBOpEAQqo8h0znxAflagSDwiIsQqV0Wg8Hj4gnLrdJ/lr7MkOue
         MrkJxdavYIdzhE/wqNnlCQQ8tIYNaKKOZUx4UpOBUcLUc3bWAO2FNxwaMv5M/0eZk0WG
         j7j2k7aNfIT/Di/mAqzABeu+8Le7LFi8WByLTc1N9Z7ux2U6dng9MgnfccDqh0YToiH1
         DjTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uyhVv4N2UiJ3EJxpaNQCWc5NdrhC/9AoAL7jZ85/7b8=;
        b=tcH1KYHqaQyJ38gNO5BwwskMIiQDgZi8ifkvEhTcsw+oVqgopSgZDFzhMXX+5C0JIA
         vfVGXjpbWCSr6QtPNPpcaERYncXvaIYEttp8waHau6VSwAoJWb5+06vCoTe2vrXQRAAZ
         gnygnVuf5ITMAMoQzxffNUc9fLJny4cTiii9cV+YepLVU8/qgPn1TT9aTQ7fl+83qHsd
         AYY4XziVSlnA9DvDoRN4CGNQMPRkpSOwdr2HFfw8w68E/KFIwvIxnZQW2mFTu9k0pR67
         3f7KnwMlGMRQYfZIVNzn3ykbuWYwfkzvwo19Rv46ePpMf/X4WAG8Qjz6lLu1DYY8TXww
         ld4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GjbUSEjv;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a14si323339wrm.1.2019.10.20.23.21.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 23:21:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id 3so11435893wmi.3
        for <clang-built-linux@googlegroups.com>; Sun, 20 Oct 2019 23:21:59 -0700 (PDT)
X-Received: by 2002:a7b:c925:: with SMTP id h5mr1847720wml.61.1571638919306;
 Sun, 20 Oct 2019 23:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-17-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-17-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:21:48 +0200
Message-ID: <CAKv+Gu-88USO+fbjBgj35B4fUQ7A_t9nHO_swyN=T1q1G2wViA@mail.gmail.com>
Subject: Re: [PATCH 16/18] arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=GjbUSEjv;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, 18 Oct 2019 at 18:11, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This allows CONFIG_KRETPROBES to be disabled without disabling
> kprobes entirely.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Can we make kretprobes work with the shadow call stack instead?

> ---
>  arch/arm64/kernel/probes/kprobes.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index c4452827419b..98230ae979ca 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
>         return (void *)orig_ret_address;
>  }
>
> +#ifdef CONFIG_KRETPROBES
>  void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
>                                       struct pt_regs *regs)
>  {
> @@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
>  {
>         return 0;
>  }
> +#endif
>
>  int __init arch_init_kprobes(void)
>  {
> --
> 2.23.0.866.gb869b98d4c-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu-88USO%2BfbjBgj35B4fUQ7A_t9nHO_swyN%3DT1q1G2wViA%40mail.gmail.com.
