Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMMU3HUQKGQESTRXUTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8272370D84
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 01:43:50 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id x2sf19807513wru.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 16:43:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563839025; cv=pass;
        d=google.com; s=arc-20160816;
        b=CEwL/G2L6BjnQHMWl82DQUEGhghi3KIxWjWt83ArOeij28aL6CJrBrLI8QmY0WM1Fr
         jlSXl9lQc8+v2toHzGcZo3B38mKOINc+rMlqaJ8A33Ll+0JhKKzTPlHuCh1SFxLRwcH7
         9gA4hrIzbXOG/NwIzt8RILyOz/Ob9mpsZojF1EpZ4IQtelSJZjJpNO3UPTYZw546CN/9
         dKoaMgSSnmcYMD+10/ewk+iEHPFBwX+uBGDCk62Cvcy1zmhO7avu4H4196q+i2MCs0R7
         4YlXnVJ+Y6ZLN4duIHgONm3r50MnnIuucD+P43LNTA5NzJZFP0IfPx66dpRUyM4mCoqA
         DNCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=jnBEt+5G7ZhJjkd10Br3XFBQYDaDdtBYbBhfBhRsUa8=;
        b=D3o57LQIjfNObiW4SXtjwGWI48Qy4dibAESTDVsZbgfA1PDsueaW0AHBb+PohZdGsW
         W2Reb3G/obqG2mP7XXg5IVLZw2M4j3PlSTXx1sk25qolVg/Jjhj0gldzW9mLRxZv0JQS
         IRv+En2vDE8i2CgI6k9OWYSFsqud5g6Pl8qJbfZtCjNl+fEWQFvHyBqqes6PEOTS8Qvd
         Hx4ZXvWKr3hkI5wptZw3cvG/eXzutKGBJXkJO8pzsWbBSSrPE7rfgIIMO9L3HPJYv1zO
         G7JdEkSBywFlm3JvXOBNkEyxCCT0fP6bfp5WBKXiDAzdeG8O2GMhGqDPUn5BcFcCwJ4p
         6UZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U5tsbd9f;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jnBEt+5G7ZhJjkd10Br3XFBQYDaDdtBYbBhfBhRsUa8=;
        b=FO4KL8d98Np+3Zz/YrTMRDGqu0nGDYljrs7TvsDwzIi4g2UmldJmjh4zbzD2cNMcXb
         WYkS+ccSe9W7MNLnI0BTIEzbYkaVDhw0my1MwDxEA8I9ElwQo/Yg8v3rplzoThW1oevO
         zTNukLr3Fl5WuX1vgpmyGn6C25oj5Xhx+4QnDs+cNK8guCsGD5liaW++fdqdBQaEmeqt
         g/Pg4GOY7MjXfSqidByNk+CvGx2WorMLa6dxR85LfH9qFjCbzdae+tYXDfs9lcHcgIWK
         Jbp8b8tjhiIEsbkEFFaoXjUVB51oy2LXrLW9poVamnJxSgexJx/Kg5JO+tlyX5NG3lW3
         9tNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jnBEt+5G7ZhJjkd10Br3XFBQYDaDdtBYbBhfBhRsUa8=;
        b=VuM3SJMACwYE6LAqhF88be5exz20NsvwRJrGPPV1U3gz+xCR4KzQO3oytdZUem1p66
         engJtqzEG23dTiy9uJXmLE3INEbdOB7OpVi9bjnhP6olvJpp9gyFkZOGzZ6ZcwWrSaVn
         /ZQkg51argS5crOnHY5qypkMN3jamAwihScO2stFuUpMWcpkj5L3MjJI2vcYqZs2sNpE
         YjmfE5zP+ZSnAx36tM//Ba/nP7sA+hXLYvLC4nkYebVY5nPfAOvh+ppN6/fDKOduQMdi
         7qIF/l8/cXkJHCs8ReSrJNCxgD4Lvvrq8Z8u5jdTlhEmvTOwq47eEKDi2Qqbo/03/Ct1
         PYRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jnBEt+5G7ZhJjkd10Br3XFBQYDaDdtBYbBhfBhRsUa8=;
        b=KiMtwk8ptEJ+JEl5tHSFX9M1hQDzsL8KKLlJ9atDfPCcpbQuXUN8pywgL6R0+GvXip
         LF0vxNDvj0+QvwopM0o9cFK5WNh00nsszyu8wKaFvtqWkops0zAvNNqnrQtMMIIrPK4w
         asfb2RQK9C81A5vqhbs5krQcHLQaJ8gtVDkt4s2TbYmQ7IKypeoXVWzEspi8i5E5RVV1
         9yIJAArhuWHjUrc8oD1F4jZtbsBMZdp5fJyAEJ8FyLZqH6rDK0vlK/xKp0wLse6HkR3E
         4xHmnkcf2Z2SiLpBotOb9D3H8eUo4zlY68WLlj6foRa/MjouOO39FNSsyCf6enkikHJK
         L5yA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPs5HjItn3HU0dyk9Aj0s1WVEGbmIEcIKxEHfJ2+2aWyyR2TCx
	0+O1ftEUcdjf9NbvMtN8ZNs=
X-Google-Smtp-Source: APXvYqxGChbaEyljgEthWAg0JTO1UJl+zWpSIzAkaXmwniJyt6I2wvJ/OQWPQRLYsdnFE1+WIW81WQ==
X-Received: by 2002:adf:eb49:: with SMTP id u9mr73546189wrn.215.1563839025276;
        Mon, 22 Jul 2019 16:43:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5709:: with SMTP id a9ls12207625wrv.12.gmail; Mon, 22
 Jul 2019 16:43:44 -0700 (PDT)
X-Received: by 2002:a5d:53c1:: with SMTP id a1mr48498622wrw.185.1563839024875;
        Mon, 22 Jul 2019 16:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563839024; cv=none;
        d=google.com; s=arc-20160816;
        b=Rc2UyegTCvwuvO1jqv9t6QHgIxQmlPhScQO3lxH+4+LDQ3sAY192HqLy4dJsNPEOmv
         eqmS7laBteWYU+E+9xvb6C7IWNM5zAF2NvIZG0Lly55nnTiJ8ia1M6SquikN4tyoOGjC
         4vgie7r9st3G4W1aR/5TncQiPPB+Y5fUQ67+zmjQbTIeSw4qu3qo03LimvuZBKpZDdCF
         y9P6LVtB27HC1fZZAp/8ZRBYh7N0yIM5008EZ7wiSvxqoQeVwGPEsGG1qh12MNLc6osl
         qqSJeGbs7ItSifQ5HmrQQDj7jehECllF50wuUA5ZLKUsgoRynsNPBN2YFuR/elIs//vQ
         bCNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=62n31EO+IbwtZ9M0AYIbqADSfnRz9wsNg2Pt+0HanxM=;
        b=eP2myQMcECAQAoCAK3VYfugdgee/tuEqAuKpeXUKtK3wYH/gvTr3Dtohuv2tQ2ghCh
         hRzD22y26LHk5Bh8mhPnipTG2vo3pg1sXaZHCYvXl4FKOz69mQogZsoLY9ZbaV7u2EiH
         Dn0rJR60xqj4yFA7zpUXyGLbfnRaOuIyDE9lbEOzvjH9BumvR2j9KLVS2WQYNEPGC0Ao
         6hTrQf+MNSGsQqjSKvtOJQHHUXukgqImLOwUSX/Xh78GAvZShgAvdjAF0EvrgvUQqSkQ
         i6xq20S6BYH7lURWtj4pkF/sepOBU81p8gWGyEHn3+GrMyE8/mqO/kaiCiSTs7nAd+z7
         duxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U5tsbd9f;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r13si2083734wrn.3.2019.07.22.16.43.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 16:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id c2so37926182wrm.8
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 16:43:44 -0700 (PDT)
X-Received: by 2002:a5d:4f01:: with SMTP id c1mr76536904wru.43.1563839024234;
        Mon, 22 Jul 2019 16:43:44 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id m24sm24985920wmi.39.2019.07.22.16.43.43
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 16:43:43 -0700 (PDT)
Date: Mon, 22 Jul 2019 16:43:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [driver-core:debugfs_cleanup 23/49]
 fs/ocfs2/dlm/dlmdomain.c:2038:14: warning: variable 'ret' is used
 uninitialized whenever 'for' loop exits because its condition is false
Message-ID: <20190722234341.GA111107@archlinux-threadripper>
References: <201907230730.0LT4uPHR%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907230730.0LT4uPHR%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U5tsbd9f;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jul 23, 2019 at 07:32:40AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: devel@driverdev.osuosl.org
> TO: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
> head:   d3f8c6d526d1397e2953c7c3adfd2bb18daaf92d
> commit: d1b9fa51a7d2cbbfb7e52b3ae3c24959034d269c [23/49] ocfs: further debugfs cleanups
> config: x86_64-rhel-7.2 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 3d68adebc579720a3914d50e77a413773be34f16)
> reproduce:
>         git checkout d1b9fa51a7d2cbbfb7e52b3ae3c24959034d269c
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/ocfs2/dlm/dlmdomain.c:2038:14: warning: variable 'ret' is used uninitialized whenever 'for' loop exits because its condition is false [-Wsometimes-uninitialized]
>            for (i = 0; i < DLM_MLE_NUM_TYPES; ++i) {
>                        ^~~~~~~~~~~~~~~~~~~~~
>    fs/ocfs2/dlm/dlmdomain.c:2056:6: note: uninitialized use occurs here
>            if (ret < 0 && dlm) {
>                ^~~
>    fs/ocfs2/dlm/dlmdomain.c:2038:14: note: remove the condition if it is always true
>            for (i = 0; i < DLM_MLE_NUM_TYPES; ++i) {
>                        ^~~~~~~~~~~~~~~~~~~~~
>    fs/ocfs2/dlm/dlmdomain.c:1952:9: note: initialize the variable 'ret' to silence this warning
>            int ret;
>                   ^
>                    = 0
>    1 warning generated.

Hi Greg,

0day's clang builds spotted this. The warning is a little misleading
but it is legitimate; the removal of the dlm_create_debugfs_subroot ret
assignment causes this as ret is no longer guaranteed to be initialized
in the "regular" function flow. Initializing ret to 0 or adding a ret = 0
above dlm_create_debugfs_subroot should resolve this (everyone has their
various opinions on the proper one, I'll leave it up to you).

Thanks!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722234341.GA111107%40archlinux-threadripper.
