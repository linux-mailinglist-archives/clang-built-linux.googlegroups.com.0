Return-Path: <clang-built-linux+bncBD4LX4523YGBB3WMZP6QKGQE5ASEGYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE6A2B5334
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 21:52:00 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id z68sf1953265pfc.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 12:52:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605559919; cv=pass;
        d=google.com; s=arc-20160816;
        b=KcMBy2PLQWLps2BX7R4zOOnjWuavEvfWRQtozkeA6iL33XYxl7D1eAckfU/ZVujLhM
         u9gnkLhgLMg9ng1XQwgNzBsGT6epN9W7G6qiAl3O01ZUi9ECFEZwwfnLRG3OEQjgaxZT
         S996AwkJXSsue6JpIHEg4n9GcDUs3fsN66JW1HIiEW860z4GhPxAuKBlbLcvZlFRG1OQ
         /9IUJe0p9dyqOcV2mtAsumbUMaNcVarfbuKxOoBVIqb7sgrRewyCdLWl+Pulx/cTKB/Z
         ua+y/hmoc9V9Pax6aEr69P+7WqoHPBYgMrtyf1USB+VvalDAvwRNt7BFXT+uMSXh6HSr
         yx0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ta72tElawJBpXTCSQyM87IyBihyC+RIwjGZvWaNZuoo=;
        b=YxjqWh2pgGdUDClMreq0952FCw56F/IPQc6VzDXaC2BABgVXtKLlbtMf4W6ffBjX5Z
         pmS1ZHsJOhf5IoVACgpsCyuwpkkM5BSHXWUlBrv481jtli4/XwYBsAabTTlJtbXHM5Q9
         YH/hs+XnVp04YVnPLULiZ7LB1iV/Jz4jgKrMh5qj51UMJSSG/E1tr4V5jhdM6CS4tajz
         pWVcJ/amE7jucwmYsN2EpYzUy9FWHgR3K7kHr4ZjjvtXucEY9D57lVLiWCwE5cqC3xg+
         IsLzuU0RM+d+0ErgGmF6hFtRpYYNgk52/MjFjbWCkjPPwBFNwUPDWtOZziWmmGkeeOdI
         h8SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ta72tElawJBpXTCSQyM87IyBihyC+RIwjGZvWaNZuoo=;
        b=rzlTg3UvoIDKJIMyjmbid86RrmkJNig5Pfb//kQ6/5byu6o1ftEHMCWD5t3iU6DHkr
         MrxeFBKQedKZTgaBaUo+km0pAioDw34naf6Y5pktTMuSt+53SwGxPAzXUVxkvzk8sS/Y
         1ByAdE08mL35tgI+FNvbUHXbwsGBMW+IwC53Gq3WKGL1cHhHP9MY+2DeBucx+GLRQM4T
         7yj9mjnBsa+amj6/YpuG206Ui4D3SWG13F3X4r8Z8RVPVtNDUjfLv+PYhv7BkIIUoXhc
         JtRFW+V1VsVyc/Uq6lw1lA2GF2DeivJE2wXfuxRI87GWNUb2YIZzUvYlHqO9YpDsPSMb
         qlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ta72tElawJBpXTCSQyM87IyBihyC+RIwjGZvWaNZuoo=;
        b=qPVv/dDeftEvA2mRf8OTMTOCHN9KrMG7vqlTTjGxx5CUAD0kT33GKOVEt0g22lyRSW
         8CepMlpHyvInN9armcd3TFzsqopba8lFajp/+AV9syFwzwRorzijctfJ9bOm+9dMx2cU
         43HaivkYGtkHNoYnKuHuMvUjoxx3He7IbW4k9G+9Dju2A2f5EK8YHcQsQKRlZ8rApGGZ
         Mdw27ecl6uLkEvmRx9z36wHBE61M4Fm/0d2OImwc1YYaXKhFQbHEJpZE4ndhEBHS5U+H
         KvJDxbqDNneRQczpUdZI6ycMT6C7LkGznta384Zh1EONupC619SBevweNA0UToj2ySOB
         LhJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tYGvDpjCokVcnetZ8318HfZM2Md+sgxNi38X8d8RdeojqFD0L
	2sUh3G3WfT2rHe+LcSZljbI=
X-Google-Smtp-Source: ABdhPJwlUra8KqehbI98H8ZxO8tbRbBgL4gP+Hi013tir1nD+KhHl2vb1uTBumBR2MisWWCcEcCqeQ==
X-Received: by 2002:a17:902:8209:b029:d6:d2c9:1db5 with SMTP id x9-20020a1709028209b02900d6d2c91db5mr14030162pln.54.1605559918881;
        Mon, 16 Nov 2020 12:51:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5909:: with SMTP id f9ls5059979pgu.10.gmail; Mon, 16 Nov
 2020 12:51:58 -0800 (PST)
X-Received: by 2002:a63:4648:: with SMTP id v8mr882995pgk.248.1605559918127;
        Mon, 16 Nov 2020 12:51:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605559918; cv=none;
        d=google.com; s=arc-20160816;
        b=rLzPks7luPn75AGS4nXG8U8XTW+G3WevXIi0gIfDT/OtCoMshSQ/TYJ1WkbaJDL377
         zS7uVroqvIii9owpZ6F8/TQcjUD+wFJRild/MJrudTHlo1xDDIjJFRJYbiC0DbXC4tkd
         aHo58LBbp4HD5NEM1VUyV/5YA8Q2EpdvYWhfylCAyvvMKs7mBmTm5f8UnDe/p562MFKw
         t+WdZ8QPx3DGL2di6BXcasLxSG5WfRjD+Xsz2hhIGN6+7S8/uQtCFGfwxV06Djz2A5zv
         UlRYSZO7X8nCytGWuteHRkMZ4vpL8OKgUnHAm2pFX2Z6vvdQTIUqvZ1vaZ9tS99Bkvm1
         bL4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=iii+kbRu5h1JhSNvyHigQAmYGqTbGWa38ybOyAOJTOA=;
        b=IVmb+X0jQhd7ykqXdUldnOL2xMujSE0fZdMwquMvOM25aJ6x7nYbI8DwIXApCjfmZi
         fClWVLdvIrLJCapf99XYvW/oEL15ky0ReHfbvoZt+b92mB6V2ruF0x2wzugVbjfeDmBl
         txSAsmxiYN7+WY0S9TCQRPtjLY7iiTj9v0FnMVIPPrMpzCxnADlLtJfcozcUoTTCK+WM
         CzmadgKBEAngG9HDaGpIf3+rPFS/kpsYrRzgVQ1RaxkYkcYnJQZLcSNvait7uprIyksR
         iwR9TfYyiH81dLwzwKtVW7dTIO7Ttw6kUHHXUZC9YHwjekpYAxIAsvwA8q14VAa1Zn5U
         p77A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id i5si118898pjz.1.2020.11.16.12.51.56
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Nov 2020 12:51:56 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0AGKlkSd011280;
	Mon, 16 Nov 2020 14:47:47 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0AGKlk5a011279;
	Mon, 16 Nov 2020 14:47:46 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 16 Nov 2020 14:47:46 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Scott Wood <oss@buserror.net>
Cc: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
        Arnd Bergmann <arnd@kernel.org>, kbuild-all@lists.01.org,
        kernel test robot <lkp@intel.com>, Brian Cain <bcain@codeaurora.org>,
        Alan Modra <amodra@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: Error: invalid switch -me200
Message-ID: <20201116204746.GC2672@gate.crashing.org>
References: <202011131146.g8dPLQDD-lkp@intel.com> <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com> <20201113190824.GA1477315@ubuntu-m3-large-x86> <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com> <20201113200444.GA1496675@ubuntu-m3-large-x86> <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com> <20201114002037.GW2672@gate.crashing.org> <CAFP8O3+NowYwhMAywd=R23HgOYnroWV9ZRkdyAejd08qsOF=6w@mail.gmail.com> <20201114005015.GZ2672@gate.crashing.org> <e19e3a9f47c988b30a19316ee3de2b588e20a641.camel@buserror.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e19e3a9f47c988b30a19316ee3de2b588e20a641.camel@buserror.net>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Nov 16, 2020 at 02:27:12PM -0600, Scott Wood wrote:
> On Fri, 2020-11-13 at 18:50 -0600, Segher Boessenkool wrote:
> > All the others work fine (and are needed afaics), it is only -me200 that
> > doesn't exist (in mainline binutils).  Perhaps -me5500 will work for it
> > instead.
> 
> According to Wikipedia e200 is from mpc55xx (for which I don't see any
> platform support having ever been added).  e5500 is completely different (64-
> bit version of e500mc).

Ah yes, confusing processor numbers :-(  That explains, sorry.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116204746.GC2672%40gate.crashing.org.
