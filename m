Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSPT6PYAKGQEKU2VLCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id CA928139D21
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 00:14:18 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id f15sf7322683pgk.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 15:14:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578957257; cv=pass;
        d=google.com; s=arc-20160816;
        b=ieHHF65DlsZ5Uq9XregIqNrG5a0HvSeqmKKpFtJSnMXjoMgTtdKNAgJV/tKMOP9LBy
         UicTwds7J2CGwM/ZMKGbHdsAQkV8u8j/ME7nBjSIql5aqyKEkBJzAeKUr2qcTrPSqzLX
         LLSYVaNbq2UNWzs+MXbF4j5UtFCvhcj53XxismmjIOCe5zScHHXQCihPfO6rVHa0YoC3
         wuaW57QT4DEJV9Da2yfTXkm3SKiuFOK1VVsBKCxGXVpaJ5u71JeXuXIuw7cdHBMNIgXq
         N4iEzVZ2vJ+e9pymK4HICM9L0H7mx4hMvwl1bXqtDp5J4t/RzLVS/sWrhGBRFg7NWAEk
         4NSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=2JgBoxn9nlq0jL5pqsknOyR/HuZbbil5xOyol5qqd68=;
        b=iXJLgg6uBJoAqa+mnpChQb+hhaofnsw/J24u/JxyOwl2i/39XlxSZTpvCbQwn3o6Y+
         4ctL0WSRE6s5Ei4XQ0rXVnPzKVNALu94ouL8HxTpYy0CXGlJ1+B5+kTQv75iETRynyOG
         XdALVC932IlEnTVKzzxgrWinLFy7aMeBdKXMb6TZZwRfVwNtHzV0Gq9HMKkEnzelZalW
         QoddUWEC6BOWVH02BBIY4wNmqAQMzrYlVwvsMplg9amxfglqm0lNs/T5u9HTLvgugxrp
         nBcM/p1QT/jo7AkF+RWQaQVuwFl5fA19o5RFlai5445VvQ1QTcdnSfADVv/qmorBLk0B
         QQWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nAGHf/Ep";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2JgBoxn9nlq0jL5pqsknOyR/HuZbbil5xOyol5qqd68=;
        b=SkLrHLTIwBCHPghFvttdAdgRnV/ageJIAokY/J499ucTM0aA16EYEFgt+xGyDdaPqA
         y1FNWtHrtC/YCu1vCEdXEx+yhKysINd8smsgejMQBisYLW1+YAItTl8PUpHMiPwYHgPj
         QspfzFvLDIuGViFbe4iI5ZVMgqbHzQkNd/fyBZ5TlSHgyrCh9LomIbZukuzDsKWlSVBt
         4A3JSnqmyga5yKPQEa/RBpr4kMssSjB+azhkJ8pvC9tHeBFquhOj3y+9ydjwZJdDpZ4p
         9i/ho9KT1GzawHP7lizJWoXPqcw8k5lfNgSmLNOclyp34qT6wnxSX4EFB0yPpdPiF1LR
         71dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2JgBoxn9nlq0jL5pqsknOyR/HuZbbil5xOyol5qqd68=;
        b=VS5ZmM98oGUuD0YnE5/R9cCo30l/vJpCUjNRBVLmIug+87SKgLsqAX0ocfYHXHIuzU
         zYh8lusGlubjwIr5DQSw5ET9xIiSZed2Z/PGTF1NsL5CFWHKJ04T7tvcl4MErM1VHA+k
         sUuFCXiSQ8JAuQnQKAG5aJkpOrPSgWV1HRo7RFfUiZgrLsdCkWkRZQwrz25266mjwd1/
         7LyUdIluGPoxf2GiKPF9HohmDNX8OEAr1cVkT8TA0bb5mk7WdxCUQl0GF3f5zEl2yGOr
         tc9VYedZWojylp4ZVQAT0ReBsFeSP3XRZmYo3Qo87Hf2tsyNq0TM54LIkK4f9A3wB5EC
         73eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2JgBoxn9nlq0jL5pqsknOyR/HuZbbil5xOyol5qqd68=;
        b=NJeTkuntVj+QUaPmdYTns3SqsMj1PO9CO3pIXW4azsUBar2LVdr6xgBlCciHEC7Zge
         XexyEj5Kf8Q1qkDkm/mvBD557GDe3CYZaJroPR87/mLksD9a1sVI+8TmZVAPmeWCOdhX
         LegZAjdqjAm1rUqWK+wgZlpJ/5MCYwIRUzvYkMlUUVKc8sDvmQg2hxlaJBYbljeZh4q6
         A7yssIueHos3a+AgxxQ7M61HW9cm2dwJpJZ697djZYRXpL3aXf9GwbYwt4YMw5/WSL9m
         uHZxATbEpAJ/JmYSnLu6MwqxLJ5Qqrs6RILwaz6W33O4jqNWxHyoXPQAAffc7e87U7UA
         X/6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5CXlTAaFU0jmDmS2I5aN865jzbCo3yPn0OeJJc+R8SkOmEWCf
	Tgn5kmKtsA7iuqX5ewqj8fs=
X-Google-Smtp-Source: APXvYqwOb0Ugwyvz+umTE1tuU4mR6/sVGQWh9mS8QHtGje0Xpm6ek4QP/AFJ1XKjuwhUUnQWaMBkEA==
X-Received: by 2002:aa7:85d3:: with SMTP id z19mr22026336pfn.62.1578957257308;
        Mon, 13 Jan 2020 15:14:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fe5:: with SMTP id 92ls5105959pjz.5.canary-gmail;
 Mon, 13 Jan 2020 15:14:16 -0800 (PST)
X-Received: by 2002:a17:90a:d0c5:: with SMTP id y5mr9949798pjw.126.1578957256938;
        Mon, 13 Jan 2020 15:14:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578957256; cv=none;
        d=google.com; s=arc-20160816;
        b=eIiVGytaLOThp2c9FporLIr4yIftn26bcPoars1SM08IgClwt79MvMpVtx9qjMPQeo
         KqIwZAsihvr9Jt+GGQ+hQOVsp7zQCtGWETj4QbtozWqNrThRsBN9Ke1/cTdIqldp8oye
         QbyCaBVJb0pi8cFt1uftGejb96wlC2t47KQZfDUtvq8z4lN+Uue5CHKCJ31cTHOXe3cR
         PR96I7P9GD++ov9OGEY1DF+lIP9nQ9ZBBGyTTmnLEkyAmoGgkVj7lB/JYexSfFeAIlI4
         GwUak69OMxopYaGz0z3ykZzY3Od6O/5/MwbO51Nls97kRBhl0sqHKPjnE2bRri+hMYvI
         7Efw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UsZ98rCI7PkotKyjeTY7iS3Bvm6JfyKWnW/whK0DyZg=;
        b=E8KntdWNlbrH8TQvDilxfcT4SfMNmoUnKoLFk9l3KPvHfzr3m3IXCi5OuZW/1nk+jW
         pKVOyeDNbKaLcrPJeb+97gPzx48j8GyfiUOdzyz9Grf27fDS8DNYrVExqCF/Llj07m9T
         hvJRu5Z+tHyBfvJU/cxzBQ1qTzAnWsE60i5DpVotiyKVwR9PWXCdNctSm6kQjCeAK7FZ
         3pmCSr3/10zS3YECUivE/2RCJr4EgVKTNpQ9uEFqykRwNqJT3dKInmTwXIEA+gI9e60p
         zfHjnpUFp30WrFpeZqFiXzND67C3pJGI6qsmYziKZn5c+yNmox04BPiKp3xAeIr3Fi2q
         t7Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nAGHf/Ep";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id r18si542015pfc.2.2020.01.13.15.14.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2020 15:14:16 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id p8so10677060oth.10
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jan 2020 15:14:16 -0800 (PST)
X-Received: by 2002:a9d:c02:: with SMTP id 2mr15137769otr.183.1578957255384;
        Mon, 13 Jan 2020 15:14:15 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j10sm4680785otr.64.2020.01.13.15.14.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 Jan 2020 15:14:14 -0800 (PST)
Date: Mon, 13 Jan 2020 16:14:13 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hans.verkuil@cisco.com>,
	Dmitry Vyukov <dvyukov@google.com>, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] media: i2c: adv748x: Fix unsafe macros
Message-ID: <20200113231413.GA23583@ubuntu-x2-xlarge-x86>
References: <20191022132522.GA12072@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191022132522.GA12072@embeddedor>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="nAGHf/Ep";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Oct 22, 2019 at 08:25:22AM -0500, Gustavo A. R. Silva wrote:
> Enclose multiple macro parameters in parentheses in order to
> make such macros safer and fix the Clang warning below:
> 
> drivers/media/i2c/adv748x/adv748x-afe.c:452:12: warning: operator '?:'
> has lower precedence than '|'; '|' will be evaluated first
> [-Wbitwise-conditional-parentheses]
> 
> ret = sdp_clrset(state, ADV748X_SDP_FRP, ADV748X_SDP_FRP_MASK, enable
> ? ctrl->val - 1 : 0);
> 
> Fixes: 3e89586a64df ("media: i2c: adv748x: add adv748x driver")
> Reported-by: Dmitry Vyukov <dvyukov@google.com>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com

It doesn't look like this was picked up? I still see this warning on
5.5-rc6 and next-20200113.

If it helps:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/media/i2c/adv748x/adv748x.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
> index 5042f9e94aee..fccb388ce179 100644
> --- a/drivers/media/i2c/adv748x/adv748x.h
> +++ b/drivers/media/i2c/adv748x/adv748x.h
> @@ -394,10 +394,10 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
>  
>  #define io_read(s, r) adv748x_read(s, ADV748X_PAGE_IO, r)
>  #define io_write(s, r, v) adv748x_write(s, ADV748X_PAGE_IO, r, v)
> -#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~m) | v)
> +#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~(m)) | (v))
>  
>  #define hdmi_read(s, r) adv748x_read(s, ADV748X_PAGE_HDMI, r)
> -#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, r+1)) & m)
> +#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, (r)+1)) & (m))
>  #define hdmi_write(s, r, v) adv748x_write(s, ADV748X_PAGE_HDMI, r, v)
>  
>  #define repeater_read(s, r) adv748x_read(s, ADV748X_PAGE_REPEATER, r)
> @@ -405,11 +405,11 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
>  
>  #define sdp_read(s, r) adv748x_read(s, ADV748X_PAGE_SDP, r)
>  #define sdp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_SDP, r, v)
> -#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~m) | v)
> +#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~(m)) | (v))
>  
>  #define cp_read(s, r) adv748x_read(s, ADV748X_PAGE_CP, r)
>  #define cp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_CP, r, v)
> -#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~m) | v)
> +#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~(m)) | (v))
>  
>  #define tx_read(t, r) adv748x_read(t->state, t->page, r)
>  #define tx_write(t, r, v) adv748x_write(t->state, t->page, r, v)
> -- 
> 2.23.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200113231413.GA23583%40ubuntu-x2-xlarge-x86.
