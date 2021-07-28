Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBHWOQSEAMGQE3CG5C2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A76B3D8B02
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:45:03 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id q13-20020a05651c054db02901864030a0ecsf225119ljp.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:45:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627465502; cv=pass;
        d=google.com; s=arc-20160816;
        b=nqfeQLXB54ZdlQjo0J37NtmnxPIS8G8mLvdVBDAOZ5HB2O/3vCeTwy7WtaTjGPHEGU
         q1HV93JDD5wWGsL3Fl/ZBIcWjRKjNIp8cqQ3gKlkEFytPfCRCGyfS40tZUCJjbMjfU4A
         5OH+L9YUkCyHi0pBxCyWIUc4zJ/SuD/BJ5uQjSMEkhebGY78yZdmw7+i7o/Y8rxV+E2H
         JcSdC4V+MocgRWqvweG/3Kc09+S0+HaORBq3KCHaNw/ohuuvBpI7vGNfqZJ8qZ+KLtrZ
         79GkVqxAclL3H6o7do1ww0GdeWpGApM6yMLX0v5L1lUKqrW1AbsT6Q3klnCo7WflaDgM
         FHuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1xbkvFEE1SpPb7uOIqAhuSkem23CQO2JMtinnMVP0V8=;
        b=rJOmv7tujLfE9WA8rVjfskyuGWToMhegddEKpeC9k7ACVrZrn5c1trm73w9s1vBPGB
         rET/9zkZ/hwdlqRGDFwWhQC0tGj/iKb4kE+HFzw2b3SFlLnR8l8zE0tZ7g0yWDFXe57S
         avIt281Hxt2ps287eHyerAPDdAh43kCKmiKxCZho6Fb2CmA+ONqrc1Mk/6VxOnV2z5Qm
         w1w+O/LnFW/Z+N0JqT/yskXATHLtFJYhbFsw7aoiJMitu5sgmQcVLD5fLMNY6XVyAwrg
         XdXRlWGVDepNjXw5zg4FFbLA3ruiuC0CkrJ6NCbLVQ+tnvX8xEaikbfnT41G117O+Qr9
         G7jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=qISOv7ZY;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1xbkvFEE1SpPb7uOIqAhuSkem23CQO2JMtinnMVP0V8=;
        b=adqB4hyeW/a3LMSPXr11QsLFzxpkS4EiU7AzKuneEVzSIYdy9vu5oF/7rIhzzjgBRG
         wl7tHX/Pn+MWe60h8Bq8OkR2YlA/WhhIRzoMhgmGajBoiDG0mOcHkNYOUTHp88VJ9G1d
         Ui6hfw77vq+isrlMkfxe+3v/JIwtgwjvTHTHUDF/oes1L/49zf6ru2WBjlTfrwGkK/Zk
         tgXD7OICNOr7gtdapml4TdFKrAGYqHbCdaZOUYKCDJnqBwOiDWGVUx0Zz04ctdM5O7wg
         GTZXCpebRCoA5ZuiXiUN+LxZrUk7H4wNSuZqG3zYI3VYuxgqweTb78ZCFmtV3LINvGWB
         B3cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1xbkvFEE1SpPb7uOIqAhuSkem23CQO2JMtinnMVP0V8=;
        b=XjOAJ3VRrMYTGrNE+6UFfp4GYp6zgeWFwZyZ5Cu1WIbfecMAKGiGxJ88avc+MeanCd
         Y8Aa9gMcDBJNbscDvzB+zZtrF2nepFGtCMaXIyY1g38RnqXp+EZR2230z7qodIV8AvQC
         0iev89qWRC6tgTeHTR5zlqKy5+8o/f0LeWvoOguDPbRzRd/droMTa/LaBqY7B7hw1i9z
         h70SSVwkqAgIkDdn1NTDT8vtbW67hHpcmMUyQmgxBYROk2ozVLQ9VXCT5mXA1b3Rspzq
         4KB9FPwmSrP/uQZcQC2nYkH0liM6VrXlDaxZ2Xx573wyYw5KT4Q7WwSm74/R+4Vwj7N1
         t1eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Mfq3ciOJEsoltk3XV0bEvyt6kAOYTn0OAxEkqQquzcAaqqit+
	IO7lOVzNrSZUKyrN/woOYys=
X-Google-Smtp-Source: ABdhPJxkB4TsyD5+fJDm1wfjfdIBBpDIVnjfAQuzP+2kqZMHTibTWhZ6E7Q0xUCPUjWd/EBtp1ggPQ==
X-Received: by 2002:a2e:884e:: with SMTP id z14mr17992562ljj.39.1627465502540;
        Wed, 28 Jul 2021 02:45:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf01:: with SMTP id c1ls260133ljr.6.gmail; Wed, 28 Jul
 2021 02:45:01 -0700 (PDT)
X-Received: by 2002:a2e:a602:: with SMTP id v2mr19074574ljp.50.1627465501494;
        Wed, 28 Jul 2021 02:45:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627465501; cv=none;
        d=google.com; s=arc-20160816;
        b=TIrBeafwHkJr1T4mpt4L4In1uMoovQAUkI6xx860YT6sW8FpeyNoCH68CzisfgsmGt
         VbJt3nCym1WkqtnEEn3Z0k7kavzzR6kbzoErgUGQWrkb/uMbdfY3P1BEwHIWatKlKIjk
         r/JKn6l0FId0tIbxK/xpmPcUfuEpSt/n0HsUApNAnBx9GBmGQzcTRrhr855dIlw2HZ9u
         s/DhX2gt0nMbTYDIRZFZ8lE+C/YN7Rtqb0uGjbbb6s3IWsNu9VvYL/dOnZWiKWDKHujj
         YBNjk/eeobC2L053g+EROL7itTdHoeyQfqDWCHiJ7+2LBAHqyIPZLA1+XT2jrjENxteM
         WVmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=2V2BZGwQx38O4MS3PRn5zsVNMTv9yCXn2m+qCzLq9X8=;
        b=XewBBbHI4O+fcw7Vh+/XKwslKP5fwprrylnb6/0X6gN9GP/C8HYDd8oJtI9kePNuGl
         LHwbIWySMphPDoPNwr9NuSzdLYVCMx8OryKjhAQC+B4zmxShXq9Igu6Xb67/jdd9HbtH
         9vzXfZ3sF7DB6gQRww1bO8J3XoLyMjh0Qc/B2Qg7LdmO7z68WOoDRJyLHZaA7LVZQ6rK
         kUZfBbhDLpPqN5qRZFZ7HAvL1k/39nO9bhl3yvlbKzVKQ9EhXjmOyfmoqC2QOivtZGxi
         dvg6gL//pHxdOYJ91daO1I/Xi1mExSi5rtEVoqwJE1CB2qx3FCVZVYmyQketXV6lnd2Z
         F+9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=qISOv7ZY;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id c40si239845lfv.12.2021.07.28.02.45.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 02:45:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id D0A3220192;
	Wed, 28 Jul 2021 09:45:00 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id BC57DA3B81;
	Wed, 28 Jul 2021 09:45:00 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id F10E9DA952; Wed, 28 Jul 2021 11:42:15 +0200 (CEST)
Date: Wed, 28 Jul 2021 11:42:15 +0200
From: David Sterba <dsterba@suse.cz>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 47/64] btrfs: Use memset_after() to clear end of struct
Message-ID: <20210728094215.GX5047@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Kees Cook <keescook@chromium.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-48-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-48-keescook@chromium.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=qISOv7ZY;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

On Tue, Jul 27, 2021 at 01:58:38PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Use memset_after() so memset() doesn't get confused about writing
> beyond the destination member that is intended to be the starting point
> of zeroing through the end of the struct.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  fs/btrfs/root-tree.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/fs/btrfs/root-tree.c b/fs/btrfs/root-tree.c
> index 702dc5441f03..ec9e78f65fca 100644
> --- a/fs/btrfs/root-tree.c
> +++ b/fs/btrfs/root-tree.c
> @@ -39,10 +39,7 @@ static void btrfs_read_root_item(struct extent_buffer *eb, int slot,
>  		need_reset = 1;
>  	}
>  	if (need_reset) {
> -		memset(&item->generation_v2, 0,
> -			sizeof(*item) - offsetof(struct btrfs_root_item,
> -					generation_v2));
> -

Please add
		/* Clear all members from generation_v2 onwards */

> +		memset_after(item, 0, level);
>  		generate_random_guid(item->uuid);

Acked-by: David Sterba <dsterba@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728094215.GX5047%40twin.jikos.cz.
