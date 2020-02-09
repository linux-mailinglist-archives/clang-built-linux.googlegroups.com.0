Return-Path: <clang-built-linux+bncBDYJPJO25UGBBI5K77YQKGQESFDUPDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D9B1569D7
	for <lists+clang-built-linux@lfdr.de>; Sun,  9 Feb 2020 10:47:16 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id e37sf2547856qtk.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 Feb 2020 01:47:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581241635; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fq7OLNJMvgTpqdVyBk+q6XEtkPa2Td7+t2pkMfUi3nGTjR9lTgVCNf2OehkTVw+Yb4
         4aTghbYzcyZB87wPdhjqZ4fcXnYbbGMq31ym9q0+aGzkyjtD68ClBkvON9A9C8ZiamQH
         hJfEdtO6s7AefKwIsY/KIkRwUrQLbqVwky/PyQe7jO+a4FkJVZPU+yNL2OGRGJ6XcTbQ
         RDTtLngC4GWEYr4vupEwmntJaP2j8Tw+7erK2fgK5ihyzWLCgbvQfxQN5iC5rqpudYzn
         xb4a9QaIVi06c35P9YNCxJQ5fMVsv6RPLgUDJL+LJ2MgY1vLHkYTaBZh9zHK0AGj/z6s
         gOSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mQ2cU947xwqCLw8qmwQ3pAXJWuAydTluY3XGXz8tp5s=;
        b=y641Qy3oN7CTWDe6N4pfSqnlcgCh7hCFlHrPgIo9AXedZ/BsJkCpIYRdT7WoCICcWY
         JKh2Amib5aKd+ZRFgVpWwQI/L5yeZggBrUUUfiTK9V+M0dSp4Qf4FB3dBJJE2gGs9QN2
         JWX8WJO9lZFTdCZn0e9lUVinKkqrPssb3bju9bitmVWqoPkX1LDJksDWRyub3Sx8t9Kz
         wzJnsNqD6maw/fwH35hDS5VFCapObiDiEJ5/taMDCcILwM+d+PRyyEYNHtgcCwqbF9Ts
         qFq4wRP3EUJoWtJzwzQSR6GH0HkYc8eo28BG2yy9lZWxgu0pOEsHlF/uIlMYYboIVSLe
         hFiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E6S7pw+F;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQ2cU947xwqCLw8qmwQ3pAXJWuAydTluY3XGXz8tp5s=;
        b=ENBXc1yXeR1ZsYPNQK3ppuvWQy4J9NO3YvWTa/pHeBJY/3xUYr0qhfvFgXT9a8oyT/
         mPUXEnh2UIoeqFoN2gJ+ak/I7HusOIzhP7yyLfyNXKXjEne4Qu6ADDSyqp52BgEz5u4D
         ck/taONQONT0Izo5DpkmL8dFsfYWzdkLjHBkOz1Bnd7AGZdbrhJqPW6NYj+HDCbh78FW
         feQa2U4nZuuOId9VDFDFGb5buhtnwzPu+KcLRl2GwVycDlRa9zSXfARg6fDkzOoETmnw
         Oa646EoBUgFHCkiIzfKV7r7l57lXNHrYxq+zr5beozH9vXunpHiZyowbNjQDNNA4UH88
         DPHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQ2cU947xwqCLw8qmwQ3pAXJWuAydTluY3XGXz8tp5s=;
        b=Adqa2hirDXotKfB0xYvskpbn/8Y24vHt1dBm039Xtzz0bhvKCZq+85m8Ql/Z+i/c73
         O98tf/9fD81NtTLSnxX7EQulfln2ipM3Mtgn/A2RqS3B2FFI2UcQ7uuU0fkuRVj58x9q
         nZxKjypnUsv04NP4i1L/mXoITSz6vXfZKHkNVpt5kykX/JfLPDcKk6w0ZuKViPmwcrw1
         uQa0nXEiEIB1fI08ROqA8P5dvf7OHmfGD3vyVn6ALfjinu7YnrszOPJ7Dera8Obnu75A
         0S4eqNCbqjaecDaKV0BfwlgPGlJ4Z0funRsi2jPI0MtkTBmyfDYcPKLiZT+XSaqanNcB
         e7Lg==
X-Gm-Message-State: APjAAAXXgSZKplk6bAuxLmiozkSH6Mxvt8+VyPAPCmdqT5Nz9v9N4V9m
	ONa3MdoK+/JeH3zfKBF0EO0=
X-Google-Smtp-Source: APXvYqyARIGFZk2AiXSst6+uNM002vHv33Zs4AffuXAPuGDbNHz4mzW9W9A6XJa8H6iBoCDXpg6JiA==
X-Received: by 2002:a37:7884:: with SMTP id t126mr6200422qkc.288.1581241635480;
        Sun, 09 Feb 2020 01:47:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ab0a:: with SMTP id u10ls1837354qke.6.gmail; Sun, 09 Feb
 2020 01:47:15 -0800 (PST)
X-Received: by 2002:a37:7b43:: with SMTP id w64mr6154123qkc.203.1581241635107;
        Sun, 09 Feb 2020 01:47:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581241635; cv=none;
        d=google.com; s=arc-20160816;
        b=o/HibVKZuPqZFdcL7jOAIzpFT4Dbv1z3DmLh2ovWXtrLnO6nS4pPseMEFp8bg1hWHI
         vnS/6wMaDEvzWuvuzGb+IPbNqxcDhiItkzmWi6/AmExuMXxwavm5Y+DZYLCzJKGfLdKR
         CxdA5y/MKYeH2Ppe//dPBtHAbHOplPs//g2Nj4nk3IsbLesYKRPRMASlyEjjpMBR5KzZ
         JfHHL1WgxHWZ4iTz3prHWpsvX/OhdTyTRAATZB984qEqjVTWrik481JEzNx/QUgL4tw/
         1m8fNQcMV+WLTHyZ/frhXD65Wq/C7q//lYIHMPMIwZBg4A3w/tL2JAuUBPQTlJ2yM+OP
         n3oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eLj0tynBJ6+0DYPMMOuWT7BaaDB+Exrb5ba8Vuls/UY=;
        b=CQz9ygzNEs8M/yFiv+7WYD29BhV87gyaCy65BdSGqruOv0W0mzkMpYpKJxhwLsYULf
         tWwdn59U1PARNFSP2EaSUag0mUvk2BlValLhXz1iGK1q932vTqM7rat4eUhXwl+yYmNJ
         VFPgELk4OitazuUz9tyfWTp83AQ/XoxQL03gzB7rNco0FJCx7QOljLdrPFaSZ0LD+7YJ
         /NPMGzyWLMK0tl42YzajTYwv0MKN53JzeSHA5mp7q0ZJOyhNuf6jpTsRDUbZ5yBMOIJ1
         QwjqaMy4aV0WxNBiir/DbneCkY7e5A/2Gc8dfu4+vEGCk/6zcv1QcKs9JjIhRlxO6XVb
         h8XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E6S7pw+F;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id 14si220908qke.3.2020.02.09.01.47.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Feb 2020 01:47:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id 6so2260095pgk.0
        for <clang-built-linux@googlegroups.com>; Sun, 09 Feb 2020 01:47:15 -0800 (PST)
X-Received: by 2002:a63:64c5:: with SMTP id y188mr8365323pgb.10.1581241633630;
 Sun, 09 Feb 2020 01:47:13 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdkce7dotTyVQcpcqH44cxLWPHgwqTXz0Zv5nCmmnkbeiQ@mail.gmail.com>
 <CAKXUXMzuwZv8EP9+iL5uM3TNDGaL5=5dx+WnM1xSzuCfHkN6Yw@mail.gmail.com>
In-Reply-To: <CAKXUXMzuwZv8EP9+iL5uM3TNDGaL5=5dx+WnM1xSzuCfHkN6Yw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 9 Feb 2020 09:47:02 +0000
Message-ID: <CAKwvOd=uUrWpyoZTzhSVpGv9Ri2pmQ49gQHYBYkya+nDZ8w8PA@mail.gmail.com>
Subject: Re: Slides on Applying Clang Thread Safety Analysis to the Linux Kernel
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E6S7pw+F;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b
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

Thanks!
https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides

On Sat, Feb 8, 2020 at 8:20 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> https://drive.google.com/file/d/1vU1hK80SZrAKLw7AqsOuZx8kEUafj9jZ/view?usp=sharing
>
>
> Lukas
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMzuwZv8EP9%2BiL5uM3TNDGaL5%3D5dx%2BWnM1xSzuCfHkN6Yw%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DuUrWpyoZTzhSVpGv9Ri2pmQ49gQHYBYkya%2BnDZ8w8PA%40mail.gmail.com.
