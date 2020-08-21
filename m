Return-Path: <clang-built-linux+bncBCT4XGV33UIBBNUJ7X4QKGQEOIQCMTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F9924CBA4
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 05:51:19 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id h31sf345583otb.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 20:51:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597981878; cv=pass;
        d=google.com; s=arc-20160816;
        b=N4qfC/BKJdnaXGK+HNTEJppBxJ/Kx3wOMqNmwIp/QZfF2AJ2KBslzGsIYtlz7EAFvh
         empMYFa9i4pHHFtsNzw9WaAf/qegKKfkj+06OHLV2LEjFde7YOeY3IPIs4HffXW4u608
         j6UJ5Cy7D+VqWhSZu12ihIwY0XS/PFzu3b3L9B9ymtV+39G+OgzGiVfuX/moTqA3qAKd
         5TApRsrrHZaBtRFvgUaspYSrrPpZIn0TsJOFPFbh0U0RvoOFjYn/0WX9u8uXHoGOJuws
         3M2+BdCxb2fcRielysxyI75zyWLC+2ZfYT2sDUBp5nWdzjLMFCsy0DffWCotWLvLGjb1
         JHQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=TSSkqTWsETWqPqdz7UNVLxn1Z6P6XaPLfZnpzoD54Ws=;
        b=T203z0IZhe/Yob3MyDBaSazR+IWmwA0rvQYobYBQIW6zZ8JybyLb2lrixDNCsthXA6
         pCyic/gz96CSFH4bD0VtpIJtFNyZ9RnQJQ2E903XkAIb9e88BE5HstiEoXfhCfp1eyPx
         OfE81q8ptsOq9mg/3EpphotBIacN7cxZLIG6uRokdbOjYw0FKOHUW+LXZkInw45TpIk9
         DjpJ+yNDWr0rMNxEvye9v7y5iezVeyXhzBkIApIz4LE/H543a82TUV/OUHx167Iw9qlp
         UYdNpg6tSwcSiH+gwFTh/0fT0d/Qpo9ehZ81RrkA4YYWBY74JGihb/wD+r7VvSFJS/9N
         LieQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tvzMiECk;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TSSkqTWsETWqPqdz7UNVLxn1Z6P6XaPLfZnpzoD54Ws=;
        b=D8ZMjUr2h2khkLTLq9KgNEHLFiVfV0PywMZEQ1KXxJ4hrnbIxCIP7R+IboTMWKmS/W
         y0RaFTTOZuCE8ICS1cI76MI0igx02CcCjULeJTtBS23x5fxcxZND8PDR4q9Pp1/pZ8y1
         5IAZfMuwG3bNt5psz1qDgjHYK1AAFRXBZ0+7Q5gmmxL5m6K7NJ6lYjlnybg0vF3se5MC
         LgoRsCbE/b+w0HVNw9BeDaabh+oF15tclcWs9ICwMYoOEKQJw3GgO5NmBo1iSQNpYlaw
         /bhwqUHRIT+Bi12N9rhTkKsw6NIyi9eQ/aVR8DhXOcaVQiYQAWmtgi6EnaXNorA+gDEz
         5H4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TSSkqTWsETWqPqdz7UNVLxn1Z6P6XaPLfZnpzoD54Ws=;
        b=So/4r00T7rWkWTUfZLs59hzlXwENgg8PYBAGf9oFvw4KVkhmaVBjaDMxy06xKzar41
         0f+niqJIKKB5yOakiz4lx+g+RcmqvBejlX6sSP3nD+rcRjNVCf3eLpGT2okxvAOifliG
         ImMRIreI0jsqZNnKY8SZX9HYXQpdsA9ikXkHDAF2pPwMievZQmLyTBJmV3Im3udVNYq4
         bi7azhGzwXmt37mBKpiWyyAsEcJsUg+N9QH9/NEicSGyzbN9hyAsadX6rpW47k9W4FLS
         nzz7GSuztd26DJ+Z3xa8tDhCZYuhiuEmpXPGY2VFc7I/gofa81x3O/KdhQbOEn6+vjbB
         +E0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dU9bHQqeTW4+sqNGRhY9ts1PKRnZCIdg1PSYHCI7gUAeDtwHW
	QCJaebBcekoevhSw8+Zrm/U=
X-Google-Smtp-Source: ABdhPJzJvBBMf0KmGiKPVaAlQgAxYkp+VUAwNqqRlTr5sZIM8Cxd0zdtKyiQjpvQ0SnZcBKMRHweHg==
X-Received: by 2002:a9d:5506:: with SMTP id l6mr680666oth.311.1597981878793;
        Thu, 20 Aug 2020 20:51:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:cb18:: with SMTP id r24ls38218ooq.0.gmail; Thu, 20 Aug
 2020 20:51:18 -0700 (PDT)
X-Received: by 2002:a4a:a201:: with SMTP id m1mr787629ool.26.1597981878386;
        Thu, 20 Aug 2020 20:51:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597981878; cv=none;
        d=google.com; s=arc-20160816;
        b=Tfk5/95D77XwPb8DKkV3aellXW69jHnWk1/Lv3mXwFUXWjWyctI2Or+vm+PAy4Yw4A
         c0YoTS0HGFgiZPF6022/4CM6WphVpZDU2Iz7dbN8g2pni8NrcOBQPzpK77H4J+dRfmSG
         pxII6trKo603MBIURrz19gApghYwweSjGngGNiRj3B1WfN2V3sxIJVf3g1/ce7EFZjDk
         tSuuD3JqoOX8M6OjMq4FAMJXOvU4ziV0HdoRFuncmVc72ZFX0g4KsUptel7nfZVKAFJM
         9d50RQ5Swzj0KkzoZg9dKoImDKQ7spUJgTlno9OAYqtmBDHgWPTeOBiSgXK52FIYVQBV
         hFTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zOfhib2Oa0wcbqoflpvs8+01xVdF900e9QP6UW1xO9A=;
        b=GPgDXnAR4Y0xiGFxKSY7J3jQPBhN+P7X8H9x4hN6U+hnYg3/IIDzes/mKelzZsU4Z4
         ZyTDkLIacW32tbTk5vz8yKeMv4PDDHUu/6stZhSi6IWC99SNi5ThfBWwij/uxBGZLF1/
         L9oJOw/qxVQLvdVkBi5uadFvYWy1g+fzgsQKBggS4wdTNQvZmFm9+cFHt5rOkNx5RA+z
         7cfJFalPQmsHDSV0utqnF7893aOJFiMhw8AAIZAsSb5ml4aXdd3/XqodY7WlbCl/UUMU
         euONpZlq6O27LdSqs/z1H2v+gCtz4A9aQZEmimnxlHDti9WHZtpLAh3MIt/VkbX3ycyn
         XXTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tvzMiECk;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z12si34075oia.0.2020.08.20.20.51.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Aug 2020 20:51:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DB25F2076E;
	Fri, 21 Aug 2020 03:51:16 +0000 (UTC)
Date: Thu, 20 Aug 2020 20:51:16 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Chris Kennelly <ckennelly@google.com>
Cc: Alexander Viro <viro@zeniv.linux.org.uk>, Alexey Dobriyan
 <adobriyan@gmail.com>, Song Liu <songliubraving@fb.com>, David Rientjes
 <rientjes@google.com>, Ian Rogers <irogers@google.com>, Hugh Dickens
 <hughd@google.com>, Suren Baghdasaryan <surenb@google.com>, Sandeep Patil
 <sspatil@google.com>, Fangrui Song <maskray@google.com>, Nick Desaulniers
 <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] fs/binfmt_elf: Use PT_LOAD p_align values for
 suitable start address.
Message-Id: <20200820205116.3467a186cb4ac20342f0ee4b@linux-foundation.org>
In-Reply-To: <20200820170541.1132271-2-ckennelly@google.com>
References: <20200820170541.1132271-1-ckennelly@google.com>
	<20200820170541.1132271-2-ckennelly@google.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tvzMiECk;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Thu, 20 Aug 2020 13:05:40 -0400 Chris Kennelly <ckennelly@google.com> wrote:

> The current ELF loading mechancism provides page-aligned mappings.  This
> can lead to the program being loaded in a way unsuitable for
> file-backed, transparent huge pages when handling PIE executables.
> 
> For binaries built with increased alignment, this limits the number of
> bits usable for ASLR, but provides some randomization over using fixed
> load addresses/non-PIE binaries.
> 
> @@ -421,6 +422,24 @@ static int elf_read(struct file *file, void *buf, size_t len, loff_t pos)
>  	return 0;
>  }
>  
> +static unsigned long maximum_alignment(struct elf_phdr *cmds, int nr)
> +{
> +	unsigned long alignment = 0;
> +	int i;
> +
> +	for (i = 0; i < nr; i++) {
> +		if (cmds[i].p_type == PT_LOAD) {
> +			/* skip non-power of two alignments */

Comment isn't terribly helpful.  It explains "what" (which is utterly
obvious from the code anyway) but it fails to explain "why".

> +			if (!is_power_of_2(cmds[i].p_align))
> +				continue;
> +			alignment = max(alignment, cmds[i].p_align);

generates a max() warning:

fs/binfmt_elf.c:435:16: note: in expansion of macro `max'
    alignment = max(alignment, cmds[i].p_align);

p_align may be Elf64_Xword, may be Elf32_Word, may be something else. 
That's quite unwieldy and I don't like max_t.  How about this?

--- a/fs/binfmt_elf.c~fs-binfmt_elf-use-pt_load-p_align-values-for-suitable-start-address-fix
+++ a/fs/binfmt_elf.c
@@ -429,10 +429,12 @@ static unsigned long maximum_alignment(s
 
 	for (i = 0; i < nr; i++) {
 		if (cmds[i].p_type == PT_LOAD) {
+			unsigned long p_align = cmds[i].p_align;
+
 			/* skip non-power of two alignments */
-			if (!is_power_of_2(cmds[i].p_align))
+			if (!is_power_of_2(p_align))
 				continue;
-			alignment = max(alignment, cmds[i].p_align);
+			alignment = max(alignment, p_align);
 		}
 	}
 
_

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820205116.3467a186cb4ac20342f0ee4b%40linux-foundation.org.
