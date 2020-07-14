Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBFMEWT4AKGQEY6Q6M2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id B16EE21E4D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 02:53:42 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id j16sf2826883vsj.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 17:53:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594688021; cv=pass;
        d=google.com; s=arc-20160816;
        b=E23Wum3sBugop/PmSiUXZAVgAY6JDZ5vtOsxI3h11JoO271OGRMT6bW153YX5A/bmn
         jkbj77tYSNPOyeuQy2LG1HreZhoQANq70KcXNlvX/JrKvfOlCM4kVk6SMjDldwx6Xpw0
         DpkJ2HMWQbGvnaRZWaF7eA9ux5fKucfMN0IXGsGMhN+SnwpMsUV/C5PgwY5RgA66bdFe
         NLpav4MM/r3b4jM443bhuIM6gt/wUXf3fROgDpjrf6i5XIDyrSAA5LlGSgXkrTUsDHOe
         2Q67tviuGS2gHuZFfmcgvx45kiqDxWaa/fbow9qz5Kw9cMQzvx9knuFWamedZOI9jojw
         C5Ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fU5v9OlPOhZYPUMjqtSn/Nq98B7QDcfPKLqPpTLU89Q=;
        b=DKgJO4QGEbJyliAK78laThpHdwe5gDtY4b+uiuWK1fmoj8xhOoQUFoB/Twm4Vmjs2q
         vL8TOxzXIDwx6+J02aLAtJhZ6smAspqy7nkCGAh2qCYObh7q2KH+FN/nOLp3VnKZa0nr
         xPLmKIF0GJIo+osSE1+EpEfawiFaSIIP2h3paHS8aYZS/mf6P4jB7M9EzDi6GvbtfMt7
         ErH/y8HtNaXGyBr5oSwWyO1wnEPO0Zq91Svm0zI3l6u9ZUy8nMrj6Lue/w6f96Qds+Bu
         FE1PZO8u3lEmNnhpRpYrmo7mMsSFcNATqZGgtm8kUj2kEXQG2hFOQxFSENIRsk7t06qh
         9WqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rMiR71v/";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fU5v9OlPOhZYPUMjqtSn/Nq98B7QDcfPKLqPpTLU89Q=;
        b=oRLX1CNuZpgk1QNHLKisJQ3kfB+qAjCUoSiupyvybYhtPnKKW+/ywk/Bi0ypUnVf/m
         +NV+FtxtFz6SQXMdKaV2J4crjkhgRCO6aq+7P4HAgxsU8Z9bGYdc+Ht6ggYz22jrRbDZ
         Dc8fZvtPA4IrKDC4/zRQMNUnoKBq5wrJL5lxlefJ3ay6eTtO4IET3RarTk0lzLv+acd9
         vqkisyqcl+G4P6OMMiMRClSaLcbiO4XuAHT8hnbeHDhi32BLn7+eD3m080HjibqBeMHI
         XQW6v+VMcTnSbeIWgbda1YXgO2KJYAQKOAXtIXDD4O/wcR2Lo060U2XZeHkobxjVYy75
         C84w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fU5v9OlPOhZYPUMjqtSn/Nq98B7QDcfPKLqPpTLU89Q=;
        b=XsgoayixJmXMqEFWsgTG5+XOFT2MDTRvEYJki2QDSBbOtsHOpKB+j3duOB3tQP5ewh
         1LVdCIEjI9GRApYoSRJ/dP2CyjQc+u8wGk1+bTKUZc9ulM4da1ByeagichbOpyHQXw4B
         sczidQwZCaaAm3408UohOPQXR3p+1SY5MtnEFX8h9CRB39QoQs/xqBJn1H2B7k40bKv3
         FYisNG/xQnobgjsw+2mupfWCbldwGoRxQYT9mb91KRpgV9Pv5f+yxXCaHpLL//YDEEGt
         ziNt1DtDOTEzgtOL8jcvbMpnzrsxcnUiGjZjS+BiN4SbZ9mhKzkyx12l5xdsVq1vuU8a
         2ioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fU5v9OlPOhZYPUMjqtSn/Nq98B7QDcfPKLqPpTLU89Q=;
        b=rfF+VFCbq9BbyoRtjC2OJHL5F2HFkLv35KLY0ln06n+ii/8ciHU1mv88ghp6KhJMER
         tmzDhwaMZzHsaAKm87kSW/NDX1KHjoZ7E5YQih+ZaEFyPOLPZtoFc905vZWd6KjAdLWp
         MyZZHtyIzPXYHEaC4TkRY5hchNHcoHwcS6LFRyUWzZsDoOBgudImZgPncDRHVqxU/V/B
         0fWbBndUbkKlVVuYBVqdedFhq/awQWVVIbKUoOvUgXAiWTVhHx3qRmbrgUYdTTKOQOMk
         80EGZTcSsZ1Kw0aLsjU6eukh1b7cMRD54OpX0yafgOcu78wEth+UdjmW97AM+p1mBZDm
         CPzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322Ed19AMQtRyPdARccqEnPlL9LNQ682t6nnNnqwuhpAwQPDuip
	3LaQM62jML2zM3++Abogmco=
X-Google-Smtp-Source: ABdhPJyCzKGWtvUV6mlWFUZOGP29b0EL2JDgTfMktVM7ZVtYqEiwT6SJEm2NjlIpIH6ynXl9qrFjGQ==
X-Received: by 2002:a9f:3184:: with SMTP id v4mr1757749uad.68.1594688021399;
        Mon, 13 Jul 2020 17:53:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:904:: with SMTP id x4ls2114965vsh.5.gmail; Mon, 13
 Jul 2020 17:53:41 -0700 (PDT)
X-Received: by 2002:a67:d086:: with SMTP id s6mr1620085vsi.130.1594688021019;
        Mon, 13 Jul 2020 17:53:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594688021; cv=none;
        d=google.com; s=arc-20160816;
        b=pUdiqx5h06LD/cREQU/AuBBAFi0SdcHlnPhERQY7PbH0bj3JbEGzjDnJPk7IXJ0JTf
         /3ZoTOBHay5A21YDHhrfWa1gXUWBCuo0Qe+96IWSDPgzIJeMNfxnBTUdxYMdI0R6JqBN
         9AGEU0RjlHkFDnHwYizfytuXQmKWqyplAMIDdF4FCVxzX//E/Oj/bFBt9X7wWUV3Bez3
         /ZRM0J1CFN/rld0eDEZWCnV9okdFi32o1ZF/K2eMCRpKa65GXxK8MIvjsPF3ilvW87tg
         rqMJfriUoxItuSltcmYAklP/S/s/djrzs/vLSnvXpIOWRg+cdSM6sOiin0SvgDaOnVAn
         n4TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bpaDsBvlz9opHaHnQGrx2N2C4SwE84lnQr92+oDq3LY=;
        b=BCZ3i2RRzj/ZOU/F3bPJe+uzEzWLtweSNLINHxe0Kv4C0NzPxabD3dA6ZkP0DcxD16
         TCudd0PZRmEPbk0KBfyP+hKyHMeLLHGMskQZI1YRrYYJVFjp75mbZAU+CuxYi1RoHYit
         MB6rIvcm7ODiXFYeYkb9tvB6b3jb0SzE7Aqm+fsxwa5ShmQR/Lsc3PT+Idf2uqY66G0b
         XZuKU0n591njCffachkaUOqhXOUZGJ7mwyOqpU2A6lr4YHmh+OC6kysBwb4mbb7VXQRR
         YUc0ZSzXaOLFaSsV9R0WlWphl/mD09Pa2+J5JsJw0x0y5k14FXlXH95XnxUu0V/T98Ue
         oBGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rMiR71v/";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id o66si1004356vkc.0.2020.07.13.17.53.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 17:53:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id c30so14136173qka.10;
        Mon, 13 Jul 2020 17:53:41 -0700 (PDT)
X-Received: by 2002:a37:7683:: with SMTP id r125mr2256135qkc.39.1594688020649;
 Mon, 13 Jul 2020 17:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200714003856.194768-1-yepeilin.cs@gmail.com>
In-Reply-To: <20200714003856.194768-1-yepeilin.cs@gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 13 Jul 2020 17:53:28 -0700
Message-ID: <CAEf4BzZRGOsTiW3uFWd1aY6K5Yi+QBrTeC5FNOo6uVXviXuX4g@mail.gmail.com>
Subject: Re: [Linux-kernel-mentees] [PATCH] bpf: Fix NULL pointer dereference
 in __btf_resolve_helper_id()
To: Peilin Ye <yepeilin.cs@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	syzkaller-bugs@googlegroups.com, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="rMiR71v/";       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Jul 13, 2020 at 5:43 PM Peilin Ye <yepeilin.cs@gmail.com> wrote:
>
> Prevent __btf_resolve_helper_id() from dereferencing `btf_vmlinux`
> as NULL. This patch fixes the following syzbot bug:
>
>     https://syzkaller.appspot.com/bug?id=5edd146856fd513747c1992442732e5a0e9ba355
>
> Reported-by: syzbot+ee09bda7017345f1fbe6@syzkaller.appspotmail.com
> Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
> ---
>  kernel/bpf/btf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
> index 30721f2c2d10..3e981b183fa4 100644
> --- a/kernel/bpf/btf.c
> +++ b/kernel/bpf/btf.c
> @@ -4088,7 +4088,7 @@ static int __btf_resolve_helper_id(struct bpf_verifier_log *log, void *fn,
>         const char *tname, *sym;
>         u32 btf_id, i;
>
> -       if (IS_ERR(btf_vmlinux)) {
> +       if (IS_ERR_OR_NULL(btf_vmlinux)) {
>                 bpf_log(log, "btf_vmlinux is malformed\n");

Can you please split IS_ERR and NULL cases and emit different messages
to log? If the kernel is not built with btf_vmlinux, saying that it's
"malformed" will confuse people. Thanks.

>                 return -EINVAL;
>         }
> --
> 2.25.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZRGOsTiW3uFWd1aY6K5Yi%2BQBrTeC5FNOo6uVXviXuX4g%40mail.gmail.com.
