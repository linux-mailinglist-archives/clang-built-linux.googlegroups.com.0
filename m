Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFXLXLXQKGQEUZPHIYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5C81177DA
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 21:59:03 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id 65sf3116954qkl.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 12:59:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575925142; cv=pass;
        d=google.com; s=arc-20160816;
        b=M4M058LnMakcpjrNCNz1N9mQ0G9yS5ZuOYgE5aGVSG0kqzhTUUNTDJmOgX73G6CDc2
         qyEkHgjyM3fppjx4RaeeVRIwvRU10On/qbJAzKBuJXjF0AqUHQlk2oKP6FELDKrco1DI
         77M4R8gGjUQ1UpH5IUfsY+TeaDe4nF7V/FFzYSVYZZB+5KqYEsXhdlwPcn6JRcephygQ
         1yV5qlDcpEFR2qW/atlUlCf4+b5mPb5JafGsOYhUcqq1w6qawvbwBEZF3cD++os3adDg
         eRbLGCwAdOr4XOPDJWBp9e81pmGBOTrKOjnPvc16SgoESoJGsvZztUPDA96szNefXO9f
         eSqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kdj3h8UyIHl2b3pShkOWMhcgjAB2rCf2j0seB7mrxpE=;
        b=oWtOoUya/zmvGY8WdoUcv9lN3bsMVd2t5BnVsuM9H+eKYmdX0Jf83nqyWyMu3NtjYS
         EOmtVq6ghh49gHgSROj8HHIuogSjNw89rzq6nfKn7EnfqlE60W4jAZ4if4/fFrpY8Yo1
         pRCSAZjLRhIO/JOmETrvVl+YL/r0gWhevoziyCOisnT/FW8ec2o3DQu9akLjyvHo78A6
         kjDoGPfUd3KYUuVUK/y0Q22TCvA9ccsQqyRveuPzB0ilc9O4jNZ7awOCV1coDJ76ys7B
         yGGL/8wdu9wAuUwkhASbqF+Wp3ildNBKWzneUZKIaj9rtO2CYs5vOTKjR2ZVsIki8OZr
         CewQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qWanMLzR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kdj3h8UyIHl2b3pShkOWMhcgjAB2rCf2j0seB7mrxpE=;
        b=qE8UdmykJhK9KPHDBmBWiVkQf6uv97Q9sY4dljZfFsRbam6bhUsxIUg2u7hSJ5QOAl
         rRckteoDEBIzkKWx+/sbOpsSBmjqex5Nj3qvx4e0BQ5JUp6fkjIMIcLXaHm77MUnY2pw
         flO9Y1lZUwQ4q9eZRBs53g1vM7s0tPSaqBqHPwj1YYlmFIJhtqqjo1gdqnP6xE70aEn1
         KruTu7cIh6loAmKd01NhUGWfzMvpV1bHIvwb3GqlCR0IbEEe9Kf4GbaYtMZP6Syjlo+f
         +WST2DOIYi6aUrsiZi3v1atyqgPVyjvCnYSqgJ8to+Ch0KQcy39rr8GZ80e4tt5URtDr
         sWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kdj3h8UyIHl2b3pShkOWMhcgjAB2rCf2j0seB7mrxpE=;
        b=SvKAIJ3Ns+EWHW6utcgCfXVoMtDNjxAEW2SYZdpCGoUGgkzZ1iYDL7CQ8GAmKJUACP
         Fk37wpNw6dT7hCxmN4oG3qsENAwx3bFd6BTZ0Qpvg6sd9CSM8lg3o1exJahIalAVQMyn
         OEfwZNF86EkpqmpXVciuYEzWz1MDewn7UoIMJxfJl/XxyV0sY2czY8AllpWGY2Xkzye5
         GO4qO/OMR8u/nZGLN1feqQUdSlqD0bC8gGYz0oG0JjUGfaj+IpUhQ5a0MLRyUHB7tfGy
         biJF59mwndo8qEYUBqzOo/GwiKxJWrigNy0vv9xXtjOQecN5JmafL7qFUSawLZqa2xq+
         /GvA==
X-Gm-Message-State: APjAAAUWfE2pgwdlwgS7pKSpA7n23n3GCByZCsMvI7JgNE17wJhotmEo
	+0ZwYRkRbaOXX6nfh4MFtC8=
X-Google-Smtp-Source: APXvYqweKIDxkLkTPceXcroRLZwKFNw6JTAV13V5NnK4Mx0Z0knEr/ztlEqsB++iDbJEUUKoKxf/KA==
X-Received: by 2002:ac8:4585:: with SMTP id l5mr11267016qtn.200.1575925142100;
        Mon, 09 Dec 2019 12:59:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3445:: with SMTP id v5ls1791975qtb.7.gmail; Mon, 09 Dec
 2019 12:59:01 -0800 (PST)
X-Received: by 2002:aed:2be4:: with SMTP id e91mr27824348qtd.148.1575925141729;
        Mon, 09 Dec 2019 12:59:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575925141; cv=none;
        d=google.com; s=arc-20160816;
        b=ZO0hjy0TFjs3S8eKoS54D5KtRf2ruG84Cha7LwmPD6hAjrM1rmpVcG2E+rSP7cIUj3
         5+p4o4AUsVGAun/k5rZKqYwMTTIA32ostqz+b0jAPo/QFeHEJvpoNp6ONJBNeKV3AqoL
         RtkQnTQLL43d53brT8VMDQfxfI+ZtT6KH6quSXf52F3hxUZOyxtaJF3S4+MPJWhZKV2x
         5elusaiX5AtMHT2KCKZLwsdbQ4jQ3p1NZ9INyVfzY4GwlfCIjphdZLbUuZ0AbeJvBEnK
         7F1u1iPvbRBy8HhNCQh83NrxnOJ8lkuzZ6HJ5JUkVXa+u4oDvdgXbx174sVC+ivjRF5m
         A8Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IpvdFtIrHJ93xklcEdnw8CFDEly30iA3CTZfPDFPOFw=;
        b=nY82h+Oplcklnqwjq4iRyA9xGBg2ytsDAk8WBZxZL8k/ujEhv8IVHoWOayFRcpIYtd
         wTQ6w07a6+HGN3pZ0vhypz0y0kj/eB1UtnrbWKeVNvIC2lIaHpXqinOwq8ZnYFlWJR/S
         APcgppAKDlgnDesUZZgiTn+wqxV4ioYhkwJAePC7n+8gvss56lM71OG2bb35ZknZR9hp
         LwLQNalxCwmyzLGeVc4zEaR5vQgW1VyR0xm084/5j3ugUVFMB0m4NuYhYK7VDmax4T91
         h5Cpi71HahLAi9gQgTirsi5dE87YCuvn/4r7toYe2Rm6n656BR3vvjc25U+IH//Oyz4T
         TVeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qWanMLzR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id b11si40716qtq.4.2019.12.09.12.59.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 12:59:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id k20so6297917pls.3
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 12:59:01 -0800 (PST)
X-Received: by 2002:a17:90a:1505:: with SMTP id l5mr223430pja.73.1575925140481;
 Mon, 09 Dec 2019 12:59:00 -0800 (PST)
MIME-Version: 1.0
References: <20191209205010.4115-1-natechancellor@gmail.com>
In-Reply-To: <20191209205010.4115-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Dec 2019 12:58:49 -0800
Message-ID: <CAKwvOdnNsWxY+ejhbToMqdzbWUP6dVP9=USZrW6neqHBoWA+2w@mail.gmail.com>
Subject: Re: [PATCH] mtd: onenand_base: Adjust indentation in onenand_read_ops_nolock
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kyungmin Park <kyungmin.park@samsung.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qWanMLzR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Mon, Dec 9, 2019 at 12:50 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/mtd/nand/onenand/onenand_base.c:1269:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         while (!ret) {
>         ^
> ../drivers/mtd/nand/onenand/onenand_base.c:1266:2: note: previous
> statement is here
>         if (column + thislen > writesize)
>         ^
> 1 warning generated.
>
> This warning occurs because there is a space before the tab of the while
> loop. There are spaces at the beginning of a lot of the lines in this
> block, remove them so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
>
> Fixes: a8de85d55700 ("[MTD] OneNAND: Implement read-while-load")
> Link: https://github.com/ClangBuiltLinux/linux/issues/794
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/mtd/nand/onenand/onenand_base.c | 64 ++++++++++++-------------
>  1 file changed, 32 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
> index 77bd32a683e1..c84ac749d70e 100644
> --- a/drivers/mtd/nand/onenand/onenand_base.c
> +++ b/drivers/mtd/nand/onenand/onenand_base.c
> @@ -1266,26 +1266,26 @@ static int onenand_read_ops_nolock(struct mtd_info *mtd, loff_t from,

There is more in this function before this hunk that could be cleaned
up as well.

>         if (column + thislen > writesize)
>                 thislen = writesize - column;
>
> -       while (!ret) {
> -               /* If there is more to load then start next load */
> -               from += thislen;
> -               if (read + thislen < len) {
> +       while (!ret) {
> +               /* If there is more to load then start next load */
> +               from += thislen;
> +               if (read + thislen < len) {
>                         this->command(mtd, ONENAND_CMD_READ, from, writesize);
> -                       /*
> -                        * Chip boundary handling in DDP
> -                        * Now we issued chip 1 read and pointed chip 1
> +                       /*
> +                        * Chip boundary handling in DDP
> +                        * Now we issued chip 1 read and pointed chip 1
>                          * bufferram so we have to point chip 0 bufferram.
> -                        */
> -                       if (ONENAND_IS_DDP(this) &&
> -                           unlikely(from == (this->chipsize >> 1))) {
> -                               this->write_word(ONENAND_DDP_CHIP0, this->base + ONENAND_REG_START_ADDRESS2);
> -                               boundary = 1;
> -                       } else
> -                               boundary = 0;
> -                       ONENAND_SET_PREV_BUFFERRAM(this);
> -               }
> -               /* While load is going, read from last bufferRAM */
> -               this->read_bufferram(mtd, ONENAND_DATARAM, buf, column, thislen);
> +                        */
> +                       if (ONENAND_IS_DDP(this) &&
> +                           unlikely(from == (this->chipsize >> 1))) {
> +                               this->write_word(ONENAND_DDP_CHIP0, this->base + ONENAND_REG_START_ADDRESS2);
> +                               boundary = 1;
> +                       } else
> +                               boundary = 0;
> +                       ONENAND_SET_PREV_BUFFERRAM(this);
> +               }
> +               /* While load is going, read from last bufferRAM */
> +               this->read_bufferram(mtd, ONENAND_DATARAM, buf, column, thislen);
>
>                 /* Read oob area if needed */
>                 if (oobbuf) {
> @@ -1302,23 +1302,23 @@ static int onenand_read_ops_nolock(struct mtd_info *mtd, loff_t from,
>                 }
>
>                 /* See if we are done */
> -               read += thislen;
> -               if (read == len)
> -                       break;
> -               /* Set up for next read from bufferRAM */
> -               if (unlikely(boundary))
> -                       this->write_word(ONENAND_DDP_CHIP1, this->base + ONENAND_REG_START_ADDRESS2);
> -               ONENAND_SET_NEXT_BUFFERRAM(this);
> -               buf += thislen;
> +               read += thislen;
> +               if (read == len)
> +                       break;
> +               /* Set up for next read from bufferRAM */
> +               if (unlikely(boundary))
> +                       this->write_word(ONENAND_DDP_CHIP1, this->base + ONENAND_REG_START_ADDRESS2);
> +               ONENAND_SET_NEXT_BUFFERRAM(this);
> +               buf += thislen;
>                 thislen = min_t(int, writesize, len - read);
> -               column = 0;
> -               cond_resched();
> -               /* Now wait for load */
> -               ret = this->wait(mtd, FL_READING);
> -               onenand_update_bufferram(mtd, from, !ret);
> +               column = 0;
> +               cond_resched();
> +               /* Now wait for load */
> +               ret = this->wait(mtd, FL_READING);
> +               onenand_update_bufferram(mtd, from, !ret);
>                 if (mtd_is_eccerr(ret))
>                         ret = 0;
> -       }
> +       }
>
>         /*
>          * Return success, if no ECC failures, else -EBADMSG
> --
> 2.24.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209205010.4115-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnNsWxY%2BejhbToMqdzbWUP6dVP9%3DUSZrW6neqHBoWA%2B2w%40mail.gmail.com.
