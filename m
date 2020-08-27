Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPXVT75AKGQEDUAS6MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C460254D02
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:26:08 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id d19sf5234036qvm.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:26:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598552767; cv=pass;
        d=google.com; s=arc-20160816;
        b=pcBr2kVw1GW8krlSY7lMyqW0WGT5hlTyFD03r8SNjB81zpLpx7mULxtQjWy3MbpGTD
         m3Jaqv1Cc+Q+SbF6FkB25p/cXibPBbXMv//Jmk+bTFZZKKxqplFILHQaOMdDdB5NjqSV
         Dr4CxdHNBIRm+54FBmJ2f5kQEooVqPPcdKYyoAaSwVRE/1+AdX0VPnHPJbOUw8ZlHAud
         8wAutMXHHtbpfB9ARqjcMGAHvQPp2dgt+CrmXJGJLdU1yWS4b2TC40TzFe1/K/3TWt/F
         ydZ48r+UDsLxGI0ivxoV0OlzMmrJRyYRh80FagcruNCIsBF5At3objPWqo8infXwl4c0
         Yv8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2ezsAMbPn4qqyYG4ewDbEfYHEjYbuRMqkal9238kxVs=;
        b=hEC2KZ562UVv5KuE6oqY8brdJEsxWRNwMkO++bVgsWmzfA6OPyo+78XAOvBK1yzyrG
         8EpndKX6tOKvjENmDnefk6xouKWvyzXLPFgU1PAM7+pu2uYstEbwvWSvrVDruioSs9Oe
         aKUFo/ztPqz/6DjDy3soAQFkRmAkTJJgxGRoAbuRobUMdMaDib9ODiafOirnfHTIehcJ
         nePUL9R08zaZuHNSFlBtVIa4y7oQJTeAVDEbhKs4TovYrVbTW68vnNHmn6tW4dLJiYWc
         fRSDrHSr6qDKRbUcJIWzWpvIOMXKdbtcKZnAZdr1cq3hOAnOcCfVslVHIKqq9lxnbzw+
         xspQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FXdPBAw9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2ezsAMbPn4qqyYG4ewDbEfYHEjYbuRMqkal9238kxVs=;
        b=PWGa8AyFuVS7tiM3Ah02qrxQb36m+m0yxYGXe3TpNFVoDXZLiCVG3CV9BDpIHAsTBD
         7emyC6Vyjs7MAapLcHhR4Qcs77EWbmqzCwtWg6hvFZj39XPQaF+eHu8fQA6yL31rKJDg
         WEzQIhm6XXhLK/wTCDJlDpWCTdb7TqSPhOI22Ne6l8vWdosBcXk+ixFDgyXz5WWMSagu
         Y9AwmDFHNeWCqphrogUox7PBlywnH/ksZ6Pdg716HtkRnfVQAXSCHt3VbOBD9j4jN9SD
         dqalUppX3sFcSH4Pf8ZlnSrLs0UNKi1shw8TaDvdRHQ9UMroCO5+AuIZBz1jo5DPPVho
         LnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2ezsAMbPn4qqyYG4ewDbEfYHEjYbuRMqkal9238kxVs=;
        b=KbG5/6hhi1zyitI+OIAf09jSpLWSYsYR/iJRpX6wcAs2o8tbwpElpm+XMOblSbjmQq
         aoKbpqEoi3r63KG1MklUWBQ453I+QfL+pUsX5+WJ6/nsJoouLUWx+9l+aiExcfpAHBSV
         5obx9jr9Evrf7gEJMZsmLt2Eel3s81raTSNjBLZIZXbIke3e+t6/6w63DkM27dneRcV3
         WuQK5y7UBGaStjcHIqgo2ETgtEzACY/8tmAlYZ115LEUqtou/L1tLZLmM6TiufT14Lkp
         u2NzFBRGl8EAiy0J3oDOcxuDrKcMLBSKB7lBTxwoL/2iFXBzCy4/+ILtyLuf6DlU8yyf
         CjZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UxIgG7WY6CwF4vIxNSjzYs4qo/TjyDZVK2VpORi/L8Gd/vgcZ
	9W2CWyun3IZ+L2sp25pvnH0=
X-Google-Smtp-Source: ABdhPJxrkXbo0FtaK1xqepJbuqynISsFqbg9qGbbgIky3Au4UW6deK08W1CadeHWOJguCHFOiE1AhQ==
X-Received: by 2002:a37:6543:: with SMTP id z64mr1487200qkb.278.1598552767118;
        Thu, 27 Aug 2020 11:26:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:edcb:: with SMTP id c194ls603731qkg.7.gmail; Thu, 27 Aug
 2020 11:26:06 -0700 (PDT)
X-Received: by 2002:a05:620a:46:: with SMTP id t6mr18193544qkt.15.1598552766602;
        Thu, 27 Aug 2020 11:26:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598552766; cv=none;
        d=google.com; s=arc-20160816;
        b=p/cQpB1cT+C10VcHALhx2Du5dqnhmvvv2P7pJ1XqFf3/oN1GrMVz1IRenqINbky6Kr
         1dvkadHvdDAYlRsVkqYwkwtZtpCnAe5bR/wY7snCTy1AccQl8rwoqGioYp1lmUhO2wTY
         h6wLg5Qhk7KqFIi0uF9boGNR67J7fnuSXFtOxUwcxneBH2Qb19+gnkPzIlDmQdZ7Y7hY
         tiaU5+TaXwBb01hu//x5fFiA/GZfUzIfGSLbbKAazhriTjyy/1UhC2uRXP22jVkJhAmQ
         mr3FdTc/A6yBjGaxy31VGjSDFGvFgXZLvw3c8xxbX1Z4s+0XswxSzhmMpRSAu/HrVSas
         CzdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6BMddBDrBrgDUNUGomrW0m42cqLSjUvpHNc8p74VZyA=;
        b=teIPg8Hzkjlx+RLhj6OtPYMF5xyn0YmTAFpBSgabV1z3cWanXILBrvvaaYus2vYomv
         KFpD/M8rpqVVN0YynrKjtbetN6Iu9vW8+3abGK2RMd2Z+Z31GS/sR8rbsw3tJVH7oMoM
         rWCEg/ib2fnFKTaDhFeVslbTWLCsjgF+RxYRp6HW81Wof076uQx2/ssY6ziApPWbKUJl
         /UMGIZ6GhoPNpcCJD258M4tYXFFE1UdvVco5F2KmepToPAR3hhOrpYZ7zGpsPkgZBxzk
         vuIOxAsqYhqIvmzTpnlKI1yzW+TO8HmkB0S6j6Pzintr1A1pUzRGqLQUe4UpyNJaQU5M
         zSFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FXdPBAw9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id f38si153319qte.4.2020.08.27.11.26.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:26:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id g6so3033258pjl.0
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 11:26:06 -0700 (PDT)
X-Received: by 2002:a17:90a:fb4e:: with SMTP id iq14mr103434pjb.133.1598552766044;
        Thu, 27 Aug 2020 11:26:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a25sm3370253pfk.151.2020.08.27.11.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 11:26:05 -0700 (PDT)
Date: Thu, 27 Aug 2020 11:26:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	Yury Norov <yury.norov@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
Message-ID: <202008271124.37242A14@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
 <202008261627.7B2B02A@keescook>
 <77428f28620d4e5ecad1556396f2b0f8f0daef41.camel@perches.com>
 <202008261932.FF4E5C0@keescook>
 <e84ea9d311fe082af8a1afe2aba48303ffbb1bf1.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e84ea9d311fe082af8a1afe2aba48303ffbb1bf1.camel@perches.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FXdPBAw9;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 26, 2020 at 07:42:17PM -0700, Joe Perches wrote:
> On Wed, 2020-08-26 at 19:33 -0700, Kees Cook wrote:
> > On Wed, Aug 26, 2020 at 04:57:41PM -0700, Joe Perches wrote:
> > > On Wed, 2020-08-26 at 16:38 -0700, Kees Cook wrote:
> > > > On Thu, Aug 27, 2020 at 07:59:45AM +0900, Masahiro Yamada wrote:
> > > []
> > > > > OK, then stpcpy(), strcpy() and sprintf()
> > > > > have the same level of unsafety.
> > > > 
> > > > Yes. And even snprintf() is dangerous because its return value is how
> > > > much it WOULD have written, which when (commonly) used as an offset for
> > > > further pointer writes, causes OOB writes too. :(
> > > > https://github.com/KSPP/linux/issues/105
> > > > 
> > > > > strcpy() is used everywhere.
> > > > 
> > > > Yes. It's very frustrating, but it's not an excuse to continue
> > > > using it nor introducing more bad APIs.
> > > > 
> > > > $ git grep '\bstrcpy\b' | wc -l
> > > > 2212
> > > > $ git grep '\bstrncpy\b' | wc -l
> > > > 751
> > > > $ git grep '\bstrlcpy\b' | wc -l
> > > > 1712
> > > > 
> > > > $ git grep '\bstrscpy\b' | wc -l
> > > > 1066
> > > > 
> > > > https://www.kernel.org/doc/html/latest/process/deprecated.html#strcpy
> > > > https://github.com/KSPP/linux/issues/88
> > > > 
> > > > https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings
> > > > https://github.com/KSPP/linux/issues/89
> > > > 
> > > > https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
> > > > https://github.com/KSPP/linux/issues/90
> > > > 
> > > > We have no way right now to block the addition of deprecated API usage,
> > > > which makes ever catching up on this replacement very challenging.
> > > 
> > > These could be added to checkpatch's deprecated_api test.
> > > ---
> > >  scripts/checkpatch.pl | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > > index 149518d2a6a7..f9ccb2a63a95 100755
> > > --- a/scripts/checkpatch.pl
> > > +++ b/scripts/checkpatch.pl
> > > @@ -605,6 +605,9 @@ foreach my $entry (@mode_permission_funcs) {
> > >  $mode_perms_search = "(?:${mode_perms_search})";
> > >  
> > >  our %deprecated_apis = (
> > > +	"strcpy"				=> "strscpy",
> > > +	"strncpy"				=> "strscpy",
> > > +	"strlcpy"				=> "strscpy",
> > >  	"synchronize_rcu_bh"			=> "synchronize_rcu",
> > >  	"synchronize_rcu_bh_expedited"		=> "synchronize_rcu_expedited",
> > >  	"call_rcu_bh"				=> "call_rcu",
> > > 
> > > 
> > 
> > Good idea, yeah. We, unfortunately, need to leave strncpy() off this
> > list for now because it's not *strictly* deprecated (see the notes in
> > bug report[1]), but the others can be.
> 
> OK, but it is in Documentation/process/deprecated.rst
> 
> strncpy() on NUL-terminated strings

"... on NUL-terminated strings". It's "valid" to use it on known-size
(either external or by definition) NUL-padded buffers (e.g. NLA_STRING).

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008271124.37242A14%40keescook.
