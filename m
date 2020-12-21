Return-Path: <clang-built-linux+bncBDYJPJO25UGBB37LQP7QKGQEXSB37LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 595D42E00DF
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 20:22:25 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id 98sf6236306pla.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 11:22:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608578544; cv=pass;
        d=google.com; s=arc-20160816;
        b=cIUbWhgVExgWCp0pP7G4ATB4XIy23lCAtEVJ3oW333dXelHhhrSblYasTwUHboaawo
         1tBY7/7Z//uWMnCpwr4Y2adnxg4DcLdS2BE5W/2PufLmBXhl0vME6XdvzjDS5rWYWHdW
         0mc0WiJkFODh/G8QTRQdV7NTZbzq7rAkRoxZOUM1jNA0PlnPm+mv+dxah+VLEwuq5EiJ
         QQnuDNV5YuDy4q8ij9E8OrwXkWEPM80X4B9n50TssAvp8TURZa9FHx4ZDOPm3Cp/p9DD
         hm+m3ZFEQwDEDjEsomX4FfK1BqMeysxS1NbKaEbRQtWLCYS6rVMgWP3MOPZTsVWY8G7V
         zdOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/G39VzRrW25ix9NQ2+HC7V7OCPi1p+J1uOVMQAjrsKY=;
        b=ypzwyW4I0XX+f4p1asXZ5gqkx5yvZV6r7JJLwACUieQkbT7jMxULP00GowqqojOh+b
         eNABJ89ofq8Bnw0l4SaIOGc9rZE2jLJTw9YhTCmYPKfQM6duyO/Zktoa0ERW9CoVlZSk
         2mZZ5D6i/RLFxio1O4IMGiZcxjXtLwPK3zKYVK27kfw2UQ1B2nI9GgexMYKCn8Xa2ycg
         /m1dA/2JkPp6LivctLb94bu0Uhy0fiH5ILVxUsnaBiz+AbUu8zQJU9l0vjtcU1BS8lKK
         n78vdfaPYbRDLNhRRSE1qRYRypT0/xneSmm+cb6eBiZNHpLlWSWu24E8vq5F1GhJyQDM
         uvDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HAw8yyzn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/G39VzRrW25ix9NQ2+HC7V7OCPi1p+J1uOVMQAjrsKY=;
        b=MqF52zb62x8Vonw74Mm76L/cLUSLmEJ5g0EVgy1OzuK2Dc9MEjxPgNNquOXMJfVSKP
         CbxQ8TUIjav9dc24xqVUwEvMixdRWPdHmzRBzYtrdN/0wGsmdxkN8+dBWaXwRQFyEms0
         EkGCwtMSMDH1si3uP9a+3T1qcASK9K5DTbEVu+ByW3j9+EFSP9fCp8Rf5vbQ+RxY7tL1
         0j04xAN4es60iDT1CO4Rde6LI0jlhcSWr8rPbHZWvI6VpJ7xoC37kMU3Yn74lpg4qw3a
         q8qVXV6mIHbsVqOIAPymhcnoNrq0kKCZyv8JhjZysNUrHiE4Qw27QNvc/ru9nJCV9bF5
         L2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/G39VzRrW25ix9NQ2+HC7V7OCPi1p+J1uOVMQAjrsKY=;
        b=rp8GkkQ7Id78UAVv8LfXNWnoSqBJte8X1OVk9RpHM1UP69lCp+Tr+EQx/Ony79Z5Cf
         WvqfcGMMVSdgq68NY1vH7Q3e+TliL5RqVT/68Ge17G+1gquj92yYVKU6a/2/0kDEAOzZ
         WolvEZuxQO+8T14Z2qYj8i3AYQY3S+f9+xzvrRZ69rJ/E99uC1EbQ0onXOXdhRJ3jVIt
         V/5FMApFQVR1FJjs5UuWG0xoCUy2OMUuwtS/T4SGvK5LCltVDaNIsa1SqQ9HnIVn5Wjd
         JCxvdig52PbN7A5VUytRPRFrPY6I7AqaaAi7SCs07i2ajhsytaWqkDY7zdSa8VIi5rgo
         EDfQ==
X-Gm-Message-State: AOAM531dauKHd5n/yOi356nqSjmGk4NnSlAqc2x7uktCOw25LUBY+gEN
	aG+cx19Loyjayg0MB4LWomk=
X-Google-Smtp-Source: ABdhPJykGEnc101jVeMxr8L3JPXBMm9zpU/YXmsmI9woRmIOk9gIXhtG+HmDokV0ysBDPlsVNkriSg==
X-Received: by 2002:a17:902:fe07:b029:dc:43e4:fcbf with SMTP id g7-20020a170902fe07b02900dc43e4fcbfmr1542989plj.63.1608578544070;
        Mon, 21 Dec 2020 11:22:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3192:: with SMTP id x140ls12692426pgx.6.gmail; Mon, 21
 Dec 2020 11:22:23 -0800 (PST)
X-Received: by 2002:a63:4e5f:: with SMTP id o31mr16404724pgl.55.1608578543445;
        Mon, 21 Dec 2020 11:22:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608578543; cv=none;
        d=google.com; s=arc-20160816;
        b=YusLcDdB2E/ZC7jfs9BszEFewgmylU/CCYsZEu20Wpi8SNmFxpsTrnhZRXABUw7Ut5
         mIYFqbTxkhDl3y7KgXU6YJqDE0rXrY1PqBxEKIv1LW8UbGjmVa5gHR8TgWfzDzbEakki
         DXTJZif/XqTyVta2s0CwW/S3epXAxVQOmcMAzxXTzSBBssXhkZaM5H58eSSlnSyB8MX+
         grrTOXUhj7bu2SLVje4IvtHjouu+60/4eNZ+4FvPW74vJeY7q3PXw0/JtVe14rK2oZUH
         HTC2ZCgyo6jXOYNmHpHF06D1xmI4SAQ1JHzCzr90TfyVyn5zexXD7ecMdpkia6q9nXT4
         44VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mQuxZifZFxzpeN594Key2sZk1el1zNmvudPhlUZwW1Y=;
        b=cKanuvgLzviTxuUtcEu4VFyL6MUIPxgClpq+7/WDorlSaVOz5YG9APdMMjdQvOdVcV
         gd+3FawfP6MhtfPCgG0dZf13P5nQb5Q9e8mUYxKOLXFzMlaisi3ebSGztiwu0rsfArXc
         zXUxUFOPuc2tqrE2uPfeBPLu7zQlUWw/Y84akhe72vtnXSsFJn4tE+Yu4v6HjBsIwV2g
         KLA5TPrYV41JljInU9peYq65OONZpoeISyWWDOsNWxrIO9OfQ8YfYiR1VsZ/C/0Hv9rP
         wx4nJey/G3RNvIsE7Sidzhc1gCkyKQms76hlFG/tynTms8APwcszFQZVKFcaRgf1rQcC
         ZQnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HAw8yyzn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id ce15si1359118pjb.3.2020.12.21.11.22.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 11:22:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id lj6so6699299pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 11:22:23 -0800 (PST)
X-Received: by 2002:a17:90a:6ba4:: with SMTP id w33mr19113541pjj.32.1608578543011;
 Mon, 21 Dec 2020 11:22:23 -0800 (PST)
MIME-Version: 1.0
References: <20201004142422.5717-1-trix@redhat.com>
In-Reply-To: <20201004142422.5717-1-trix@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Dec 2020 11:22:11 -0800
Message-ID: <CAKwvOdnjEDnReJ8+dK=S+FaQW29gR8q+9d5XSuUXrTrvWoiM5w@mail.gmail.com>
Subject: Re: [PATCH] apparmor: fix error check
To: Tom Rix <trix@redhat.com>
Cc: john.johansen@canonical.com, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-security-module@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HAw8yyzn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
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

On Sun, Oct 4, 2020 at 7:24 AM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> clang static analysis reports this representative problem:
>
> label.c:1463:16: warning: Assigned value is garbage or undefined
>         label->hname = name;
>                      ^ ~~~~

Right, so if aa_label_acntsxprint() fails, it won't assign to its
first param. In the caller, this means assigning uninitialized memory
(UB) when aa_label_acntsxprint() returns -ENOMEM for example.  Thanks
for the patch.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> In aa_update_label_name(), this the problem block of code
>
>         if (aa_label_acntsxprint(&name, ...) == -1)
>                 return res;
>
> On failure, aa_label_acntsxprint() has a more complicated return
> that just -1.  So check for a negative return.
>
> It was also noted that the aa_label_acntsxprint() main comment refers
> to a nonexistent parameter, so clean up the comment.
>
> Fixes: f1bd904175e8 ("apparmor: add the base fns() for domain labels")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  security/apparmor/label.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/security/apparmor/label.c b/security/apparmor/label.c
> index e68bcedca976..6222fdfebe4e 100644
> --- a/security/apparmor/label.c
> +++ b/security/apparmor/label.c
> @@ -1454,7 +1454,7 @@ bool aa_update_label_name(struct aa_ns *ns, struct aa_label *label, gfp_t gfp)
>         if (label->hname || labels_ns(label) != ns)
>                 return res;
>
> -       if (aa_label_acntsxprint(&name, ns, label, FLAGS_NONE, gfp) == -1)
> +       if (aa_label_acntsxprint(&name, ns, label, FLAGS_NONE, gfp) < 0)
>                 return res;
>
>         ls = labels_set(label);
> @@ -1704,7 +1704,7 @@ int aa_label_asxprint(char **strp, struct aa_ns *ns, struct aa_label *label,
>
>  /**
>   * aa_label_acntsxprint - allocate a __counted string buffer and print label
> - * @strp: buffer to write to. (MAY BE NULL if @size == 0)
> + * @strp: buffer to write to.
>   * @ns: namespace profile is being viewed from
>   * @label: label to view (NOT NULL)
>   * @flags: flags controlling what label info is printed
> --
> 2.18.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004142422.5717-1-trix%40redhat.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnjEDnReJ8%2BdK%3DS%2BFaQW29gR8q%2B9d5XSuUXrTrvWoiM5w%40mail.gmail.com.
