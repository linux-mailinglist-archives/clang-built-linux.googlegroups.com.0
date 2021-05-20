Return-Path: <clang-built-linux+bncBAABBWHPTGCQMGQEF47SO4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 2688538B241
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 16:53:13 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id i27-20020a2ea37b0000b02900f2c58a2986sf7543163ljn.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 07:53:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621522392; cv=pass;
        d=google.com; s=arc-20160816;
        b=X6iNbMJhiUIWMc2i4z1p+Z3KbJhK11UPCnztIla1Gn34PP4KLt2h3vNeRff1IzMTBx
         iExz6SpPSDT8TjT359B+/ZBBNGARlkMEdWsEhhuKnL2yXU1D+W+T7M/3wDXpOSQs0PIg
         GNLBOjva/08UypCTMgbG4yNpbB85gW5dzg0oJJRkttrvN10L0aSfbJmBsiAEpTjMnZ2W
         ibXI9zNksgFCJbwUaQYKV3q+uL40hRURor7nMD2Ye6qN6bk0PXHoRD7hIs7f+lrgPL0o
         iR4mLH1wtejecZj5DqB/zVPSqOKY2XQyWiJlOzgNTcMRUHgMheVptvisrj7TWeS2tMCV
         sVJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=YjVHknfphs8YawXGBO6JiMuVtqGUN+0hxl6I/RHlPM8=;
        b=m2Kpw+jMnGVaWWtoX7QBHJylUs5wAn3a2lgmXWh6CbrT66HirBPyDntU3ljqH8YVRd
         8N5ueo0g8t/MUGQZRcpnE5puYxh0UXUzenhQ8xVoOMXFfvOJ098MO6uxpk182TrEZI7u
         9fKirm4lnqkC140V95KOYyd6ZhP5qkNSTqOgUHjUA2dCWBqKM2lTK14h0E8c0BMarh6B
         q0FKFHpu4dFfUR8wz7SfY5pxUmPH44YqLo9rFCCuY+Je+WAt14nNCYtW1OcxrzPRy5fU
         STyWh40F0Z6qry4az0bWVw1qgrkagJg0WeosxkIa6RkhY5u5wy6B1YvgfEq8mcLh+Gwd
         m68g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=Wi9GzXp7;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="eEhTc//Z";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YjVHknfphs8YawXGBO6JiMuVtqGUN+0hxl6I/RHlPM8=;
        b=cagF4zOrHLEgRp5W3AAllnAoKpOWe5E6Fd7WY6IeczwvzmXFMAAjXAlDSngXUmsPEt
         gxE1ctJNgoRsUuJ8UXmi9rueanLDtITFEY5vcDYlhrDvaMWNQjJPdHVPKndqjCoO94KV
         YfILyaM4HEQYHyUwqIUVuvHwrTjDy+eiTPGg9JwjPv3LDcjDeKKMl+x2M7t3nNaDoOw3
         8enjq7CANGem8QD26D5wmSeUCivbSD5gjb0k+s98t5G/Z/+LpeeQFg8tqYGFdyTMDnZp
         B3tI8T7xXJwO/WxF0iN0TqrrU803eHmsimlIy890CfwqdM06RrPqhOyGMrJbBW4C+5PC
         bGsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YjVHknfphs8YawXGBO6JiMuVtqGUN+0hxl6I/RHlPM8=;
        b=ryTSuh+UHoWXECrWx+kJx/LKmsm1VbPbXi4BUHPBdzSIbPc81hbSnS8ci447dKpnYg
         WELjJ7np9Oa9LPVn5sucjFNFoambWXbU0mf58WW5mobyBZBxNDhygG6bdXQDKmLBsnAL
         IZHu8eotxr3RviQE6WYEE3cOfYf2+pJjVELxBmrxw6EiAF7BQA510bEghVAj8hy15kJq
         BOcigxwI0FQ7/93DUBmHAs+SKbdqnUAIrVJ4aQ+SgX8Au5NQfeUGdpUD5nC4b8mfnhNK
         QzhGLthYR61IXdTdWQwTnlP99NwgWN+FXQcDVnA4JBWe/wV31cvrkJgw+9mAA+4VSWVC
         EzBg==
X-Gm-Message-State: AOAM532mGq1835f8wiA6Dqm5YTcgrptvV6PXSx+d+VOYP6Mrv0lL4h9N
	5BaxW8JQQbgu7XEfzf+Rq/4=
X-Google-Smtp-Source: ABdhPJyonUv+n3UDEmessekv5Gws/msVkvw/yw249lF94niv5uVjSCte5/gpjQmzsJXBqkQJu01BFg==
X-Received: by 2002:a05:6512:3f93:: with SMTP id x19mr3629707lfa.182.1621522392720;
        Thu, 20 May 2021 07:53:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc06:: with SMTP id b6ls628955ljf.6.gmail; Thu, 20 May
 2021 07:53:11 -0700 (PDT)
X-Received: by 2002:a2e:b890:: with SMTP id r16mr3279951ljp.300.1621522391820;
        Thu, 20 May 2021 07:53:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621522391; cv=none;
        d=google.com; s=arc-20160816;
        b=jsOAvo6Njbyx9yiJCCoKktpZ2nTT20z0iWsiYKfRfQZbxz6vrpSp1eVFQHeCxseZzm
         QCn6t/6Q3ohCVw7bvm7hKmEJciga5TbzO7nZlTxL/SgDg/db1kvRtmnGS8281uz+DmTD
         fF810cmFBsGP/xccS8FRYc+5ZVOh1lsRrY4drfReBVzHGMjKM33JhjqTH6/cCEmMhccJ
         tggPABGJWhiTDihx5SdfVcazBpMBSO2xj/cBmrpDnMjzCJsnh/BkWqGBh78D6GiBQ6IA
         B158aC6M5SFcl3Pc0YYTpzjjpmTsnVzra91xcGQQQgJWQbJo0EcocMAfQzsY99xdlM/0
         bA7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=twfdgMKvq+qZu+1IFRTbYX3i4ggeYR+hsqTGbJOWG9s=;
        b=hBNeN6SavK2d5aY9cyhik8mwvr29eq6ofNJyl9JsFqftm1OoZ/MuY5n8R2yd1o0loP
         /Gcw1G92Mvw2qg2Oxy+Cs14ookBoZx4siu29XifHplcfnUkvhm7BCBgEQqSXK0dR/BOF
         Mgnfci5DElKM6K2bsW+6K0ZZVuW9JT2lPeIm8nsl23umh/L1VAclLQd6mbfqSi34Br+u
         17NiYhLc4CODeUW5cPdm9p8WU3e5RdSg+im0Ensti+kgKlDvcM7j0ttmiUejIaOZa1vl
         nvil0ma0lAVw0KzQa8LYbYRlRZyO+JezAKhmXB176JNNnu0O9MMiS6BRHUhgOg8tquh6
         T+xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=Wi9GzXp7;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="eEhTc//Z";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org. [2001:67c:2050::465:202])
        by gmr-mx.google.com with ESMTPS id i14si101477ljg.7.2021.05.20.07.53.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 07:53:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) client-ip=2001:67c:2050::465:202;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4FmCQv2txyzQj8f;
	Thu, 20 May 2021 16:53:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172]) (amavisd-new, port 10030)
	with ESMTP id 1eLjRH_01cFl; Thu, 20 May 2021 16:53:08 +0200 (CEST)
Date: Thu, 20 May 2021 16:53:07 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
	"almaz.alexandrovich@paragon-software.com"
 <almaz.alexandrovich@paragon-software.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Message-ID: <1291339880.1758.1621522387730@office.mailbox.org>
In-Reply-To: <CAKwvOd=Z1ia4ZufDbRsEUkumwkz15TtSb2V1aBT7SN8w86RKYw@mail.gmail.com>
References: <212218590.13874.1621431781547@office.mailbox.org>
 <CAKwvOd=Z1ia4ZufDbRsEUkumwkz15TtSb2V1aBT7SN8w86RKYw@mail.gmail.com>
Subject: Re: [PATCH] fs/ntfs3: make ntfs3 compile with clang-12
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -3.31 / 15.00 / 15.00
X-Rspamd-Queue-Id: 4A07317FF
X-Rspamd-UID: 58cfba
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=Wi9GzXp7;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b="eEhTc//Z";       spf=pass (google.com: domain of
 torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender)
 smtp.mailfrom=torvic9@mailbox.org;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=mailbox.org
X-Original-From: torvic9@mailbox.org
Reply-To: torvic9@mailbox.org
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


> Nick Desaulniers <ndesaulniers@google.com> hat am 20.05.2021 01:06 geschrieben:
> 
>  
> On Wed, May 19, 2021 at 6:43 AM <torvic9@mailbox.org> wrote:
> >
> > Some of the ccflags in the fs/ntfs3 Makefile are for gcc only.
> > Replace them with clang alternatives if necessary.
> >
> > Signed-off-by: Tor Vic <torvic9@mailbox.org>
> 
> Thanks for the patch. +clang-built-linux; please make sure to cc the
> lists from ./scripts/get_maintainer.pl <patch file>.  It should
> recommend our mailing list of the words clang or llvm appear anywhere
> in the patch file. This helps spread around the review burden.
> 

Cool, I didn't know about that script, thanks!

> > ---
> >  fs/ntfs3/Makefile | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletions(-)
> >
> > diff --git a/fs/ntfs3/Makefile b/fs/ntfs3/Makefile
> > index b06a06cc0..dae144033 100644
> > --- a/fs/ntfs3/Makefile
> > +++ b/fs/ntfs3/Makefile
> > @@ -4,7 +4,9 @@
> >  #
> >
> >  # to check robot warnings
> > -ccflags-y += -Wunused-but-set-variable -Wold-style-declaration -Wint-to-pointer-cast
> > +ccflags-y += -Wint-to-pointer-cast \
> > +       $(call cc-option,-Wunused-but-set-variable,-Wunused-const-variable) \
> > +       $(call cc-option,-Wold-style-declaration,-Wout-of-line-declaration)
> 
> I think it would be better to leave off the second parameter of both
> of these, which is the fallback.

OK, I will do that.
Thanks for your feedback!

> 
> >
> >  obj-$(CONFIG_NTFS3_FS) += ntfs3.o
> >
> > --
> > 2.31.1
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1291339880.1758.1621522387730%40office.mailbox.org.
