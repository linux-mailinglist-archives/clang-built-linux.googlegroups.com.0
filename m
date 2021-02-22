Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV77Z6AQMGQELP7MYIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B1138321F88
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 20:02:47 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id b62sf98296wmc.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 11:02:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614020567; cv=pass;
        d=google.com; s=arc-20160816;
        b=A3Q8/gA12KUIqSCeGPtNguudZdUdwG5rPWoYXf7UC5g3KJDHoV43+NExuKVtayHr9h
         hGKLBhxgRv2HzQzKvQGpdCbRHhH7UXUjRP0IxAMErz4Qcub7Fa3GEInHNT4DhLm0h27O
         cZwwtgIrnFiXxQaKeEIdw8vbbIv/IiWrJ8QhhQBQhgWR6Y+5VrJWsg+ZK9C2qLXH0MkK
         6yaR+5r2x8uda+ZNv2FUCYwbCaZ7lSNrzd6qUeb0q1bdzgeBqAOrQnebl14Xkr31DiKZ
         kz4VjDF+7Dlt82pbRo6PN4smIPBpTmTzAbOigdnLjHzcGR7jpfTOBDdl2Np3hV1Rpuly
         Cwbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LcwmTOcImhZU1ARY7PdzK4ub9Ra0Ts8qkOXQkU1ozq0=;
        b=oAIkjuE3k1MekoK6jZpc89pFQ4Jy0k7dvuwHIv0vziJhlS6v0+ROSRKj2j5cV8+nli
         2QbGz6lrXu+GDrvrRkml7EuP8mnfznWLz5GhwGgo21bATU2JXNxhMns1cegc8On/bs6W
         rFRXZ6KoGMZ2DmB3zNvcTuch/MYKuHx6G4VTFvQrtn0EVZgHfMTpmYmdPd8y+FFWO5cs
         Qv33kz1NmXqa3MCP9fCiB+D4Dpl2/9IxyDIS09zzgjOWY7hWsaXii/jje7QGwhN2bz9R
         o0638J/HPZxd/Z620QlBG6Zd40Ier/NqVEQ+JRUw5yWdQiBPn/4COA28KLMSEiq/G8ds
         56HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mrY2NByH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LcwmTOcImhZU1ARY7PdzK4ub9Ra0Ts8qkOXQkU1ozq0=;
        b=RQDXehAdUkevIZ/K/tJ6RgtnFup363nAlWyDWDojmvX334EizmHMBNXxF0mMPcPrOK
         KjvOko7sxdOk6OGHA2Vb8vOashjoDATb62IdVkqq4wKfDiSDzixp0NW9K+7/TbVdgB4k
         8PuBrNE7XvgcJskgAxBLl71s2JGuETaXR78JkNIrynRMRp437xzkzAnBbfmouc/culqq
         hlH/N6fUTJ+oHH/jN8LbYKj13an3qbuMwRyn+TXhUmzW1Ns6SsZxFn80cTkf/ieWEMw5
         IWQF0vdJAiISDk/axo8ZSHML9Udr7z6V+2zn6QDI+r9LpDAXKbN7x0Y54HQkDe5Fs8D/
         PupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LcwmTOcImhZU1ARY7PdzK4ub9Ra0Ts8qkOXQkU1ozq0=;
        b=Wd5Dh3n7BI3h4rEN936yf3h3kJc1otr5GuYE19Tsr7KpUTK4jhvCGk2kClcZ7/f/LA
         RuyISo0VvWwYCsh5Nqr6S0GrYj3VEW/WTOwGgQdyvvppUVOGseWhZln0y+evWp33jpQI
         IVxGf7GRi6N/Wn1R3XSjS+8WIpNvLFmPNGoOW06W9zZ7Y62k6/rAIy5msnUiaFBuIzoU
         wqEGMcUjZaSD0KaJCI6fJ+Hm2ee7jzbv1wbnq6jWbBa+iZC2eTPJ4/TF5dM9iKgvLLro
         nNaqr7UbHKfm7Lcb8zxjR4bSo3FXKUbFntnj5VdjLbALE41NEy8ex8ycsETtOFCJhcva
         iCqQ==
X-Gm-Message-State: AOAM530P43jhX9NniF67bu3TJqBhWA1ep/pe/Cr/hHg2NlVxsHrz0gwh
	4yL3RD1iHLdWcUAFpG+sNsQ=
X-Google-Smtp-Source: ABdhPJxlcQ8XKK/QUnDOcCDYO2lOCp9uKt6GT2mgwXIJFbXi1UecNk+kqh2W9hpUVuZgUu6cyOFAyg==
X-Received: by 2002:a1c:f708:: with SMTP id v8mr20957968wmh.25.1614020567479;
        Mon, 22 Feb 2021 11:02:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f207:: with SMTP id p7ls2721092wro.0.gmail; Mon, 22 Feb
 2021 11:02:46 -0800 (PST)
X-Received: by 2002:adf:ee0e:: with SMTP id y14mr9522056wrn.380.1614020566753;
        Mon, 22 Feb 2021 11:02:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614020566; cv=none;
        d=google.com; s=arc-20160816;
        b=meOngHE6pXQUXZzPgvn0Zl2SVxGCOmdvqCcZvVrKg1ggFLd6y9wtd03kCvbdNyHuYq
         8mTYFNaVj/0wKKdWjxIQGxoxXpRFh9NuEzds6nTtvs97N60sMKea0/ukEXhS9vVp6MTx
         C1OTc9hAPfanr1iRo+Ju7uJoQqyrcXkA/gHSaHZqpVzczlFX9vKj6sytihOeXZG/HSbk
         4MkqpwwZDXC5W1uvau3K1sYE6DSbYSIJOHrdF1Xw1nQVlwfw0wG3LGiHiwMI2rcEIb6I
         3C9VI5Ps1DGyvXNLJPf8fnRpTVbYQggWiaUBk5vW/kM28G5VW3II3zuua71r6LMMIfEh
         8a5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l7tjb/ULPTs0YK9djuSw4jI/piZzj9Be22oeBt6d4gY=;
        b=ZE8bXYVHAXzbPPrtwAp6Rc6B8LOJCM0VdxXQb1VjYfVrZ+PMwSVVt2OMYWoojmFDhF
         8sWDonS+FwkiHT2IU00FY/O0c5Pxd5iTY7icp4DmbD5KJoZMO7MwUAV1ggbG82gXOXB6
         /cdVMzA16yY+Nrh5LZ8dg5b6IrKqzUcBzteQjoaMR4kAm2HxYMeY5Hw7ELpVHjfAN2hP
         mFUWfkxv5uWDL+Dg2uhtJlN2OtdrzfzYGI0oI31iebk3TdRyhLOofXJMjNS8umjkKHDY
         piifA8mANZ+WXm7dprJdD5WIA/+anSUrGYVnd62QvXT7Z5ccMlAXpAyNA+gA+v+kg70U
         Kuew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mrY2NByH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id h10si23561wmq.4.2021.02.22.11.02.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 11:02:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id d3so7398367lfg.10
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 11:02:46 -0800 (PST)
X-Received: by 2002:ac2:515c:: with SMTP id q28mr5267546lfd.297.1614020566033;
 Mon, 22 Feb 2021 11:02:46 -0800 (PST)
MIME-Version: 1.0
References: <20210211194258.4137998-1-nathan@kernel.org>
In-Reply-To: <20210211194258.4137998-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Feb 2021 11:02:34 -0800
Message-ID: <CAKwvOdkJfJ+LDspz04tsjd=55LxF5rgTOAXt0cPxTyCCUBqgBw@mail.gmail.com>
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
To: Gabriel Somlo <somlo@cmu.edu>, "Michael S. Tsirkin" <mst@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>, 
	qemu-devel@nongnu.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mrY2NByH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
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

Did this happen to get picked up already? EOM

On Thu, Feb 11, 2021 at 11:43 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> which violates clang's CFI checking because fw_cfg_showrev()'s second
> parameter is 'struct attribute', whereas the ->show() member of 'struct
> kobj_structure' expects the second parameter to be of type 'struct
> kobj_attribute'.
>
> $ cat /sys/firmware/qemu_fw_cfg/rev
> 3
>
> $ dmesg | grep "CFI failure"
> [   26.016832] CFI failure (target: fw_cfg_showrev+0x0/0x8):
>
> Fix this by converting fw_cfg_rev_attr to 'struct kobj_attribute' where
> this would have been caught automatically by the incompatible pointer
> types compiler warning. Update fw_cfg_showrev() accordingly.
>
> Fixes: 75f3e8e47f38 ("firmware: introduce sysfs driver for QEMU's fw_cfg device")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1299
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/firmware/qemu_fw_cfg.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
> index 0078260fbabe..172c751a4f6c 100644
> --- a/drivers/firmware/qemu_fw_cfg.c
> +++ b/drivers/firmware/qemu_fw_cfg.c
> @@ -299,15 +299,13 @@ static int fw_cfg_do_platform_probe(struct platform_device *pdev)
>         return 0;
>  }
>
> -static ssize_t fw_cfg_showrev(struct kobject *k, struct attribute *a, char *buf)
> +static ssize_t fw_cfg_showrev(struct kobject *k, struct kobj_attribute *a,
> +                             char *buf)
>  {
>         return sprintf(buf, "%u\n", fw_cfg_rev);
>  }
>
> -static const struct {
> -       struct attribute attr;
> -       ssize_t (*show)(struct kobject *k, struct attribute *a, char *buf);
> -} fw_cfg_rev_attr = {
> +static const struct kobj_attribute fw_cfg_rev_attr = {
>         .attr = { .name = "rev", .mode = S_IRUSR },
>         .show = fw_cfg_showrev,
>  };
>
> base-commit: 92bf22614b21a2706f4993b278017e437f7785b3
> --
> 2.30.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210211194258.4137998-1-nathan%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkJfJ%2BLDspz04tsjd%3D55LxF5rgTOAXt0cPxTyCCUBqgBw%40mail.gmail.com.
