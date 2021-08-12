Return-Path: <clang-built-linux+bncBDJIT2UJ64IBBUM322EAMGQEOSETMYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B13503EAC38
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 23:08:34 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id i16-20020a0568080310b029025cd3c0e2bdsf3508616oie.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 14:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628802513; cv=pass;
        d=google.com; s=arc-20160816;
        b=WZ6yPdCaihoHyrgcUy1hbGV19mt53842e1UtOxex7xHt40JocooD7p2x1Xv0yd5spO
         0jSrxT7DzI0gGQ0gSektSFqyMTVJhwdHR6eaIaZ0W7drMFmdVhQUyVIm1ZGCmm+6goxR
         0N/SRDYGQUmqz1/mLNQjfw8bKqphUNi7FgSnLFwTbY+/Leo2yq9Y7V1Pv4ChwjENzLug
         UeJaHcI36jN8Vk+YjMgHmxRilj9uSgHdUyp+LAQrmxu1xkl9/UiuDyKG0qQjy6tLHWc1
         BJZJ6BzvMA1cnR7MJpU1cukPvmOTcJ4pRj3GWfvEvYiG8j/cln0hYmY7okINMnfpOv7o
         QecA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ZM7GDzFizsN8C87dtSfPjd5jVsUHfEd7eiAiM0UrjAs=;
        b=ZcztDBd3mM+D0/ZT3BLuKf94J3XHTH0A5lr29mRenM1fi6IvCxMls77YjWrA7OmZT5
         kFVLrI/sQg5LKMwRYyw/tnbS4eJA5eULcVny8KBl9PWnjyNsz34j7evCWC0QoNqPtw2A
         p55j/KY9WbEiYh+RlqufNOpWKUCSjPIaB7UDRQa2jPGDRY1OFdiucPsh4EWLnJ+pKArO
         fSnXYl0LQN2gQniYWtH2R0iS7CLEFERFrFc02LFnUXmuu8CWGsYQvfcKGxUtkWnMMVJl
         XpOQb8QYoGGvR+lhbqtnUrcvUGLaQbpJvAh9ouS1j5w/B2VjkGjfFLF5AUJBBiqBgbBG
         k1wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@philpotter-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=Jsgo+mi3;
       spf=pass (google.com: domain of phil@philpotter.co.uk designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=phil@philpotter.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZM7GDzFizsN8C87dtSfPjd5jVsUHfEd7eiAiM0UrjAs=;
        b=sVdv/e/vidwp8f8LApVMHfroqaOXYsFPujdi/l4xKAL7+WIxL9TnISuKVZgrEbiI0Y
         6DJ7zwiNGUaUFtJ7//bFXKZmLY6q8IC5gmAaiJEd8whAaaTKNYH0bu8f/avJlgoGDMa7
         qTwNz9UeIyfolK6Gb1OxtGD49PAqABCr0nVFgTQttLXTbn55W5qodHVSW6F5ID9stukO
         I05t8YWTk4LA0ctsBE1OnIsJNOvFn1oz6wyKQJIoHMGglg0KCpHifIUmQQEZbE179+Rp
         t3WZX/Y3gh4Imsy2WGLfF8dfTvmIGc5a5eDZOZnU3lwdxDVrGumFPFq/bnOhFayFPpH4
         9BpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZM7GDzFizsN8C87dtSfPjd5jVsUHfEd7eiAiM0UrjAs=;
        b=PWkyLsJppb7/TJnRj/kU5tRjNsJZYqO9BBFEUQxnU1tsWDq2J+6ZA8J8tMwuobg7GT
         KqYnkMAPN3tAkYTx9J5ycAj0ZrqjQPrOtdFnOZNry9TcVjPD31mXpsi7DoNSGddROI5G
         Ixx7K0CKjCCa62SDyMBwojnrSkHpOLOW3/5oIpSQVWWA1jgiAmDVNHZMQCmKUO0QVS3y
         6FJIXYteJGPZayiKyyVeAxbtHaBfNb6g2Xh9+GkyEeCQ3hxXmdpE/0acAVtOgB5We64T
         d6c2MaiqAzyP0Bo4DUAroCRJ/MKNX3dDVswBUfgmULO8cJg1IvCVtHlN26Mu8+awW2tg
         sPiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NWAF9QENigl27QaHcqxGk8SlHYX8owQtzA+pqqnAVvQYqVsAN
	vm2L3BBDjxWEhHjNhvttNx4=
X-Google-Smtp-Source: ABdhPJyHzwXMXUo8JpyAey1NnHxjzHGnEbu4asllhMhAoU1NwNm0y28GAPgmPb0bXU+ED//ONzyQsg==
X-Received: by 2002:a05:6808:68d:: with SMTP id k13mr4953324oig.83.1628802513746;
        Thu, 12 Aug 2021 14:08:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:15a6:: with SMTP id t38ls1700201oiw.0.gmail; Thu,
 12 Aug 2021 14:08:33 -0700 (PDT)
X-Received: by 2002:aca:c46:: with SMTP id i6mr12280939oiy.76.1628802513264;
        Thu, 12 Aug 2021 14:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628802513; cv=none;
        d=google.com; s=arc-20160816;
        b=jyosSX1Ik0I8xQYunXZcK0jg2fYqCKrlhPS9D7EOw0zG/doIDJV+OX7fq36mq3hAcP
         ZafUl8lI+VzV30nJqK6qxwX7lWJlqQNdjZWNBn3z137Q7Y90+QtVXdsudHVupyxyLbrL
         NeGxDyi7dWlA/lCfB6eIsFTAQv63Rzoi7SKvfmblQIiVfbkwGRmy0f8Fj4w1HzbGMi6W
         U0WQ7gpzhFlW/q+bpZFZAC0gXnUMu9VhbJ6N976Jhr4mnH5CobSpuVw8y29jEqCnupzc
         uHf9DHlXeE7dptvCq8qxUMFuck9xFEpQNYfQzm/wqu/MOiB7290rhdfuf+yKTBY+WZXI
         JHiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s7RmTXV1rtgfdtsCI73hdM+Qxlp56ePZYyS2TvYXHy0=;
        b=ISkN5bCjhjVsehYzlqN0kfF4PoR6aPcTHt+71V68qXrtPLJjb2abaEfbuxBW6l8z89
         NhHqGPz1J9BH//+b58iXnDGNfWrCnx/oE7z1eWD0yJbCniCA9itNL4Ceysv1itD4TYkF
         oPf/F/dpPni4O+y0LfrqNX16yI/rYWk/YgPg/m3kej9qvcvtY4Q+xaLnvoxvufv3vSkf
         YR+9VK/5n+uwH3o/9eMoQyesm5D8tVtKWTGvgeUeKeIXHmCnx5oPbqbP1lIHI3YWvOoV
         5SMI09wz4qh5kX5Gj976xbw94kZmC1GR4UfUGNVT+hRh7I5jcD+nNXZ3h4N+8Txee7sS
         NfbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@philpotter-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=Jsgo+mi3;
       spf=pass (google.com: domain of phil@philpotter.co.uk designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=phil@philpotter.co.uk
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id c20si229906ots.0.2021.08.12.14.08.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 14:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of phil@philpotter.co.uk designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id cp15-20020a17090afb8fb029017891959dcbso17337536pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 14:08:33 -0700 (PDT)
X-Received: by 2002:a17:90a:1f49:: with SMTP id y9mr18061147pjy.225.1628802512865;
 Thu, 12 Aug 2021 14:08:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210812204027.338872-1-nathan@kernel.org> <20210812204027.338872-2-nathan@kernel.org>
In-Reply-To: <20210812204027.338872-2-nathan@kernel.org>
From: Phillip Potter <phil@philpotter.co.uk>
Date: Thu, 12 Aug 2021 22:08:22 +0100
Message-ID: <CAA=Fs0meOs0uzN-3AS2a_Gwzs5eVvD6+xxPUkjhNFZ5L4WNx2g@mail.gmail.com>
Subject: Re: [PATCH 1/3] staging: r8188eu: Remove unused static inline
 functions in rtw_recv.h
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Larry Finger <Larry.Finger@lwfinger.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-staging@lists.linux.dev, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: phil@philpotter.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@philpotter-co-uk.20150623.gappssmtp.com header.s=20150623
 header.b=Jsgo+mi3;       spf=pass (google.com: domain of phil@philpotter.co.uk
 designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=phil@philpotter.co.uk
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

On Thu, 12 Aug 2021 at 21:40, Nathan Chancellor <nathan@kernel.org> wrote:
>
> After commit 987219ad34a6 ("staging: r8188eu: remove lines from Makefile
> that silence build warnings"), clang warns several times:
>
> In file included from
> drivers/staging/r8188eu/os_dep/../include/drv_types.h:22:
> drivers/staging/r8188eu/os_dep/../include/rtw_recv.h:395:9: warning:
> variable 'buf_desc' is uninitialized when used here [-Wuninitialized]
>         return buf_desc;
>                ^~~~~~~~
> drivers/staging/r8188eu/os_dep/../include/rtw_recv.h:391:25: note:
> initialize the variable 'buf_desc' to silence this warning
>         unsigned char *buf_desc;
>                                ^
>                                 = NULL
> drivers/staging/r8188eu/os_dep/../include/rtw_recv.h:412:52: warning:
> variable 'buf_star' is uninitialized when used here [-Wuninitialized]
>         precv_frame = rxmem_to_recvframe((unsigned char *)buf_star);
>                                                           ^~~~~~~~
> drivers/staging/r8188eu/os_dep/../include/rtw_recv.h:410:14: note:
> initialize the variable 'buf_star' to silence this warning
>         u8 *buf_star;
>                     ^
>                      = NULL
> 2 warnings generated.
>
> The functions that these warnings come from are not used or are called
> from functions that are not used so just remove them to remove the
> warnings.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/staging/r8188eu/include/rtw_recv.h | 46 ----------------------
>  1 file changed, 46 deletions(-)
>
> diff --git a/drivers/staging/r8188eu/include/rtw_recv.h b/drivers/staging/r8188eu/include/rtw_recv.h
> index 857269ae4209..81594e7aed51 100644
> --- a/drivers/staging/r8188eu/include/rtw_recv.h
> +++ b/drivers/staging/r8188eu/include/rtw_recv.h
> @@ -386,52 +386,6 @@ static inline u8 *recvframe_pull_tail(struct recv_frame *precvframe, int sz)
>         return precvframe->rx_tail;
>  }
>
> -static inline unsigned char *get_rxbuf_desc(struct recv_frame *precvframe)
> -{
> -       unsigned char *buf_desc;
> -
> -       if (precvframe == NULL)
> -               return NULL;
> -       return buf_desc;
> -}
> -
> -static inline struct recv_frame *rxmem_to_recvframe(u8 *rxmem)
> -{
> -       /* due to the design of 2048 bytes alignment of recv_frame,
> -        * we can reference the struct recv_frame */
> -       /* from any given member of recv_frame. */
> -       /*  rxmem indicates the any member/address in recv_frame */
> -
> -       return (struct recv_frame *)(((size_t)rxmem >> RXFRAME_ALIGN) << RXFRAME_ALIGN);
> -}
> -
> -static inline struct recv_frame *pkt_to_recvframe(struct sk_buff *pkt)
> -{
> -       u8 *buf_star;
> -       struct recv_frame *precv_frame;
> -       precv_frame = rxmem_to_recvframe((unsigned char *)buf_star);
> -
> -       return precv_frame;
> -}
> -
> -static inline u8 *pkt_to_recvmem(struct sk_buff *pkt)
> -{
> -       /*  return the rx_head */
> -
> -       struct recv_frame *precv_frame = pkt_to_recvframe(pkt);
> -
> -       return  precv_frame->rx_head;
> -}
> -
> -static inline u8 *pkt_to_recvdata(struct sk_buff *pkt)
> -{
> -       /*  return the rx_data */
> -
> -       struct recv_frame *precv_frame = pkt_to_recvframe(pkt);
> -
> -       return  precv_frame->rx_data;
> -}
> -
>  static inline int get_recvframe_len(struct recv_frame *precvframe)
>  {
>         return precvframe->len;
> --
> 2.33.0.rc2
>

Dear Nathan,

Thanks for this.

Acked-by: Phillip Potter <phil@philpotter.co.uk>

Regards,
Phil

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAA%3DFs0meOs0uzN-3AS2a_Gwzs5eVvD6%2BxxPUkjhNFZ5L4WNx2g%40mail.gmail.com.
