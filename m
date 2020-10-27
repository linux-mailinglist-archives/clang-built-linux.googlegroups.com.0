Return-Path: <clang-built-linux+bncBDRZHGH43YJRBR6Z376AKGQEHLZGXDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9666F29A82A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 10:47:53 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id 64sf612023pfg.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 02:47:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603792072; cv=pass;
        d=google.com; s=arc-20160816;
        b=C2wP13Y3CKc6/wdtCr2hldYguT+/LkbPy9mNVUHNBYCCt2WISLZIACunqZysDZTJ7I
         JPt4JbiqkVGRRl4ICql/10yMWNivemv3i9jMhomm0N4G55E+tSwx4zwgOpA9uYz08NtB
         FXub/ZB9V/mGoKi4ECCyX3dyO9Y2ytVbsMPwHkp8p8ji+iT7btNUh5KiwEDT7vLastw+
         59HDIkaNJRxJ14F0VHSk0pl+N9oVOQaOtogsZNlKXfinaWK9naUjrt5wG2QjhI6QX6ri
         XkwZVzPE0wvaTUYeRqsp0xOXdbF/ED9AVsHnhU8VJ0e3PFpNf0jmAtaifmN2KNwTnJ99
         j+/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1FN92jnkSo5i1Ng+Ecsyf1ui3fRmptEOUqUPpztsjkM=;
        b=GhNCaH1/7w0ZBMx7QbV21QynSkwX6CI+aJWfmB2+XxX/0ekurYOv3cvD/DnWeEvoOC
         7AdOrR0GhAbf2cGxhgyS6eYRlwVnYOygUjEWIuzgkaqnQ7J9Ea2HKnFzBASSusXBvKcM
         2PAX7Z3Hmfp35gWDqLc/K9c+9P2NwYneq4saxzxPQbZHI50iZsFMF4LaHXTfL6Q0OD6z
         q38Z2FBT/8dTeQYUcyuVg3kYZKhHmBFQgFLPoCScrm4pv3aZFqKfQvAdjvaTQHavig8m
         VWlfJ/ddJg6zViQ5mIlx8lp9KtgZl/2fPVjMeZCJVKVbxfWZfTdU8/O4TNQnO7bnEKvG
         JhyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m+imZfaf;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1FN92jnkSo5i1Ng+Ecsyf1ui3fRmptEOUqUPpztsjkM=;
        b=tSIgKrVp8+V6GC02tIbmd3ReH/kiqCQMNEhpl+RJ7J4mpchaSnjigXe0074fHVVE7V
         yO5LwOzo4Zd+TCVjfe8TepM3EKlVIwUuBxbS74P3v8AyViCzHePxCxQf9lo8QxPmcnDG
         bUzTlFACI+xbcfAavh99fVz0OPJqRpf35lK5o4G3xi9tdBY0UDiZ0DUl1VTtpE8L4TAy
         /kdCJxQfYxoNwz/cT8xwE51WHVcE+brtLZJtl2ReYlgkfvLIKdZyz6pDAkjlYjy2dYhm
         2x74X7NdNN19EqGCy7VXXcIiTn5JrD515WxkJHnAt+lkF0BwYcTis6/XDWI4hIWDvDe6
         ykUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1FN92jnkSo5i1Ng+Ecsyf1ui3fRmptEOUqUPpztsjkM=;
        b=GVvE9joFqi2LnXN+FQOLDyXVhFmLikuqqxnp5xrNJoGtLIvytAEX3p7UQvKwpgB+lL
         zksWFrCEfvUQVJGRM5fV/Ha56JvqDYz53h0SAtb7InoYdhRJX/fcO1isdDfLebFeresa
         czKRT2rhYtC1ec0WmOxzDUo8SC0r6vnQDA8eUQPrWBZlXUBHo8vfK8KbsI8mdWgt6D+k
         pes5UtSXKHVrdUOWeYWsuHTQhH1Zwfit0qsbALaQP0iGH8F34jdo1eKyZyi8eux9R8y2
         6RBmO+AAXJoFflsQnEXMg8n0W9T083A4UxUxeRzFS/eEhfawFRF1Eae0cZxitWNMFswv
         bslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1FN92jnkSo5i1Ng+Ecsyf1ui3fRmptEOUqUPpztsjkM=;
        b=Nd/Va9SxuOvcrcKa2iKKOHgKny7/WfqQySBHYcurDvX/JGNw4K7qoduMe29sMW0jNv
         1Tt9VYTR3oyv0wYYwxo7wI4CVyF4BCn6UvTrjX9S/vmxeeZrCP84/nbtRO81lotwbAsP
         +RoGpeZLlFUYIX/57WRBmIY/lRpalX7nKKx3Pyn60A5CF0kiL78I+Opu1JDfzdI+rn2Y
         S+nmmQHpZQb8FagxB/TIcicuS/p7PwcZv7jhUROOrT0A8VLkrposzCpZ9wkiDtICHvUM
         ulCyHCuSFS2yxiUk68rz8oHg8kCHzSpIt9aKR/QD/aw5+kb5XMINa0IYO4ayAZ+42uo8
         x0OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZVl6dJ5MqeeDnCIcLXpr0AFOwJO6oUyheXTQr9CFVAHKWwSja
	yAtvJSDQNg5w2QBiGy3cABg=
X-Google-Smtp-Source: ABdhPJzjfjr3L7ZW4Ba89Ma1rU/BAjiRF43BRzj1xX3R+I5Nzvb5g+441AmOyJrYgeFcxcOQoqdtfA==
X-Received: by 2002:a17:902:7882:b029:d6:38a2:8dee with SMTP id q2-20020a1709027882b02900d638a28deemr1636297pll.58.1603792071854;
        Tue, 27 Oct 2020 02:47:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:8f47:: with SMTP id r7ls453423pgn.8.gmail; Tue, 27 Oct
 2020 02:47:51 -0700 (PDT)
X-Received: by 2002:aa7:9f0f:0:b029:155:ef07:6ae0 with SMTP id g15-20020aa79f0f0000b0290155ef076ae0mr1450487pfr.70.1603792071194;
        Tue, 27 Oct 2020 02:47:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603792071; cv=none;
        d=google.com; s=arc-20160816;
        b=ZVU/gBUPhg2+dGYRHLA6gCnyCi/rOpQQLFqlVRwojFiMWOHupWYXbuOJdpOHwQ1xTk
         QD7m7mYspEasKyJmzWY0a0cHF01Kd7exIRBYpy7cnZlNscC0Lv3+WjrZgOj7hDpyajU1
         4zfIF1Xib01dqqby6IxuoR37lexYqXuP6UTylT8kL6sLydFvXk+9purJ2FstYfo4K26U
         cTcsjCard+Ld2b8KKERuq3Po7MD5hxf9rBbVxY5P7vdKgS0kbmgOSmxXpFTvQx5brpZe
         s4u3flFcxXNnUz3ApvUWKC3s8utnSHhtVGHp+h4qjKHEo5C8wTP2PvERdSbwKLNDQ5u3
         RkOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oFwSSyZ6tdGB8SL5Ua5qFlSStYifHOLGWVo06VaDKtE=;
        b=EZiRjgZvXZE2Z8hOchgFRnCNrgV/Rw4RZUoh8MiScxWeTpWM8D5/zbGmhaa/R+5Amu
         +EOwx+3g4jPiC/OQdob1qgtHp9KdlUQJeCfEkeCLNdUS9Nh71F8BLOrRMjidjqdsUcVX
         P+L2CFG43N9AB5q0OfJ2zrqIvmSiM19h4+ltfioVxnY4MQfJGRdWa4NKtnGvqsYYSmZY
         4gGnp/7VAAbBIXVULb/rDROvR4Q5GAnfkcMtyomDvOYJhd2ysoVw7ZKY7/QiRX+ElJZu
         VNjdiBqM2eW+5JTuT6U8gRI148IdKJjfs1d0x/mVYRJPzDib2TYP04UbCOWPXeNnXml+
         khNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m+imZfaf;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id h24si68485plr.0.2020.10.27.02.47.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 02:47:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id s89so678941ybi.12
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 02:47:51 -0700 (PDT)
X-Received: by 2002:a25:b792:: with SMTP id n18mr2094133ybh.93.1603792070514;
 Tue, 27 Oct 2020 02:47:50 -0700 (PDT)
MIME-Version: 1.0
References: <20201026192117.3811525-1-arnd@kernel.org>
In-Reply-To: <20201026192117.3811525-1-arnd@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 27 Oct 2020 10:47:39 +0100
Message-ID: <CANiq72n72FMnNnWveSZOj_3_beXKX03CVL8=cQqqa8QyK-PKig@mail.gmail.com>
Subject: Re: [PATCH v2] ctype.h: remove duplicate isdigit() helper
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=m+imZfaf;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Oct 27, 2020 at 12:57 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> +#ifdef __has_builtin
> +#define has_builtin(x) __has_builtin(x)
> +#else
> +#define has_builtin(x) (0)
> +#endif

Could this be

    #ifndef __has_builtin
    # define __has_builtin(x) 0
    #endif

? i.e. mimicking what we do for `__has_attribute`.

It would also be a nice idea to put a reminder comment like:

    /*
     * __has_builtin is supported on gcc >= 10, clang >= 3 and icc >= 21.
     * In the meantime, to support gcc < 10, we implement __has_builtin
     * by hand.
     */

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72n72FMnNnWveSZOj_3_beXKX03CVL8%3DcQqqa8QyK-PKig%40mail.gmail.com.
