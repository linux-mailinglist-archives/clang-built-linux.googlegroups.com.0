Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMXUXLXQKGQEVI32HBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC5811783A
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 22:18:43 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id x2sf4124862uaj.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 13:18:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575926322; cv=pass;
        d=google.com; s=arc-20160816;
        b=o63kyxwfBGyd1i1K3Tagq2WPPw3KC8LJIay0Kb+/wko8NwHPdTMVl2rb4wm+DYV5fW
         GicaPfUIrRfg5hPXYoTQxDzBKVw5czc4yQFupcq4UUaWZUwJ0jz8jYtRFZ0/ECSohSUU
         yimsdTKjVesRsobnNtW9H++f2jW2UiJlJ0c9JoZSZU/HH5pGcZal/H1BhaZWhVWnk+3h
         zpXzM0K8j8jGsB884fjt6gu1z36v6AbRQemDI5y2GYun5UL+p8yNE4lBtatK/YTft43L
         lGQ92JKyRKoSv0urt1NelBtc6erXyDpHn+rIB3OwWpR24PbWPTEQIXhWS32rC2VVKttB
         F1mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=x8+CZoF3titwzZt4ZVs435KjJlU/wDfrh8Zp32eexZw=;
        b=LsbRCEaAOv56fyMJvSqeV7Z+aqByuOVarMq3sgxXScMv7fyBYgiPE5oz6ft/R98WxN
         1QDkkbomFTC50KQSVhi6iG80vWztJ58ANggoTLtedHiGnUiGOrb5+3/D2hhZNxDg6cjv
         9u65mLcaQIdq7/hI/A6ctIWlK0UJCoFr753n2JuhtuaiTUFOYImaSaB4RPaC16yy5Bjk
         EYbE5q6Ie4hfRn1ZUqS7CvdNNNl3TBhqUx4Q3y9fvvpmT8N9N7Qt9awt61Ut9Y/V4HWp
         J4J0j4do7kg+sJPPhnfQAFpKfBeyitj1cbbGDMT4bnnUmaPA2t1FLJEUgZKH8nrlrKii
         u3Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uW7KM0kd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x8+CZoF3titwzZt4ZVs435KjJlU/wDfrh8Zp32eexZw=;
        b=IcRTZsSU0HbuQwjz+wLqt0T7EAMEDpXy72AUM68veGm+i9EbteEESREfV3ClgkTW0o
         umvWdWgNiEtR8LTvEhmmxYBveuFqhzJqjryUJTz7MZ4vTi56pZuCvtTHYm0XgczjS+eD
         u9IC0K4e6cA2XkZUS+FPJrCuvV7eVZPUHxGGjnvmgwLjsksE0aT0aOawc5/RuNFJYRnz
         lnPY8HLoU3Z/E8X/b+lqdQeujwNVqoZbdM2QP56WUklj56d8bOQyaEgu806rB6K4wwZr
         Ll3dx3Hic3R1JoikS0W4WlMj2MIEr8U1nFlnWf6X4OjKCXaQ9zpxt6Pc/XDXqh2UXmjO
         ZRfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x8+CZoF3titwzZt4ZVs435KjJlU/wDfrh8Zp32eexZw=;
        b=k4nwYFqYfoX0DJ3+st7y7GMuGlh8Nh0GqKTSy6aOletUIxHLmPaRD4ZA6jeZLKS0BR
         E/Qyc1odcHNQ+7kD4f810vepTTq2wjCp+Oq3dTGqNgb0roUgOje5P+6/kogCGgTwKW6V
         F98xIdvEcczg/8/tXInFN6mDvoLDx8HlljUUsPBlkBH7p6s8H6EjirMaOOpLFW7TMVXe
         qLs6ScL+iZyBQZB+3zS3jqgzUbCUKrdDFVIC0QnJlSPixApanZSTA3+/oDaFteAenZc+
         Ttlnb6B1zknmSxwYUED9PeVwnFmDIVI3K6xOLqmBp56u+wf3+a4O0PWHeHuoaLlwQ+7W
         9Wew==
X-Gm-Message-State: APjAAAWmENpHbOhV1qRTw5jGCVwnxIOYSNlAy7UzjMgH8iml7dkatA6N
	LHA3LRRl2a1G9Pk8SMbC0NU=
X-Google-Smtp-Source: APXvYqz4MvyiROrw+u+oD4YxC6BPW8zO4JOMH8TrTlTuKyiVvf/ew03PRZmdpwDAlQv+iAcirNzmjg==
X-Received: by 2002:a67:7904:: with SMTP id u4mr22299163vsc.155.1575926322213;
        Mon, 09 Dec 2019 13:18:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e991:: with SMTP id b17ls1651253vso.4.gmail; Mon, 09 Dec
 2019 13:18:41 -0800 (PST)
X-Received: by 2002:a67:c097:: with SMTP id x23mr23299313vsi.164.1575926321883;
        Mon, 09 Dec 2019 13:18:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575926321; cv=none;
        d=google.com; s=arc-20160816;
        b=D/uP40EMEmQyr1JYsx6Ua8RI3AoJ06sbzK2zTmLdGud+lLHQ5833IRQ19y1lZ9Jvux
         tAER7qkmuaXgV+aovwA8gcz+LchrtY0pWRhu/xBFCs3DLJ3WBCtep/1+VPru2CCURVb8
         OCNoy2hTqij9OvQFdqpJYn/U7JfEp+hBWM3lTdzceSrDq8U8hL9ZqBszWBFo4b+iYgI5
         gK/t4eqUJ5+obgvpkI12GlwrQ2wpsYDPztBD4drTD87kVbLeAiJGb3eMJ0kobqmb8J+S
         tblZtJn8vygNq0Y//CrblgxE/Wx+aAQZNZS9QfaIipjb+VF0bQbDIII6MMVrFKEBk0JO
         sp3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8sHrzINyOkYNGQIQ9XXaLWKRmil7He9/vhOTZUxiLLw=;
        b=xkwNROKrNnNb8kRURhJdRGtbiCWfnkFPabPZTZnLZh44UL95tzq7rD3yyvL0KzUN7L
         xAEKuhdqtg9Y+8+9UFXrjgH7AXwdqU/Ct7TNi9pk+DWaCnz7EPAOjc/txGLSbxK7QdtA
         RR23y/HFSNXN80k3h07OBvatHUyBjv3TxmE4jwe34tFpeKv0HrZJvKpLad9s7koJMuxs
         eSKPtr6Wp5+wt9SKM1F3NEzPFFvSJThMloMLgZjBsBe65772gGMXOTR3WLAg+HuDYjWj
         ys9qVWHE5AwZ7G/wJlBCf6iv88lxJ8ilaKwK8J1iLB2c8z1qYrDPE3LJ/boFx10AIbNV
         ULqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uW7KM0kd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j9si90950vki.3.2019.12.09.13.18.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 13:18:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id s18so7860963pfd.8
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 13:18:41 -0800 (PST)
X-Received: by 2002:aa7:9151:: with SMTP id 17mr31823690pfi.3.1575926320653;
 Mon, 09 Dec 2019 13:18:40 -0800 (PST)
MIME-Version: 1.0
References: <20191209205010.4115-1-natechancellor@gmail.com> <20191209210328.18866-1-natechancellor@gmail.com>
In-Reply-To: <20191209210328.18866-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Dec 2019 13:18:29 -0800
Message-ID: <CAKwvOd=GYWaoxQg_xH-gOHfqKeTZ_qaw35ucjFxcjd69AK+pyw@mail.gmail.com>
Subject: Re: [PATCH v2] mtd: onenand_base: Adjust indentation in onenand_read_ops_nolock
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kyungmin Park <kyungmin.park@samsung.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uW7KM0kd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Dec 9, 2019 at 1:04 PM Nathan Chancellor
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
>
> v1 -> v2:
>
> * Clean up the block before the one that warns, which was added as part
>   of the fixes commit (Nick).
>
>  drivers/mtd/nand/onenand/onenand_base.c | 80 ++++++++++++-------------
>  1 file changed, 40 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
> index 77bd32a683e1..13c69eb021a6 100644
> --- a/drivers/mtd/nand/onenand/onenand_base.c
> +++ b/drivers/mtd/nand/onenand/onenand_base.c
> @@ -1248,44 +1248,44 @@ static int onenand_read_ops_nolock(struct mtd_info *mtd, loff_t from,
>
>         stats = mtd->ecc_stats;
>
> -       /* Read-while-load method */
> +       /* Read-while-load method */
>
> -       /* Do first load to bufferRAM */
> -       if (read < len) {
> -               if (!onenand_check_bufferram(mtd, from)) {
> +       /* Do first load to bufferRAM */
> +       if (read < len) {
> +               if (!onenand_check_bufferram(mtd, from)) {
>                         this->command(mtd, ONENAND_CMD_READ, from, writesize);
> -                       ret = this->wait(mtd, FL_READING);
> -                       onenand_update_bufferram(mtd, from, !ret);
> +                       ret = this->wait(mtd, FL_READING);
> +                       onenand_update_bufferram(mtd, from, !ret);
>                         if (mtd_is_eccerr(ret))
>                                 ret = 0;
> -               }
> -       }
> +               }
> +       }
>
>         thislen = min_t(int, writesize, len - read);
>         column = from & (writesize - 1);
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

With this applied, I see a missed instance right here ^ (L1304).
In vim:


^ \t

In my .vimrc, I set:
https://github.com/nickdesaulniers/dotfiles/blob/37359525f5a403b4ed2d3f9d1bbbee2da8ec8115/.vimrc#L35-L41
to make tabs glaringly visible.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209210328.18866-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DGYWaoxQg_xH-gOHfqKeTZ_qaw35ucjFxcjd69AK%2Bpyw%40mail.gmail.com.
