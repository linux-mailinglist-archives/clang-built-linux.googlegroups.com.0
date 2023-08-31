Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOFDYOTQMGQEAA6XQFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B05978F21B
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Aug 2023 19:45:30 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id e9e14a558f8ab-34ce664572csf7231305ab.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Aug 2023 10:45:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693503929; cv=pass;
        d=google.com; s=arc-20160816;
        b=oGg7sc7ve4SRRCck60w2k3qnd64WSHEfnSXI0mFbO/inD6zmSWrwh2J+DmhjBesrdT
         iP12YDGArQx4w609d7N0sgzHXIpaOyGmvADennu/S71/3xiq/26MLWidsxa2zOarcXvr
         rz5kUCQZfDY3ZINYB+j/TtAAW5QPYvFxZo3ddV/KKctqqvZwOUw+vjB6rsZizylk0Bdq
         IrSHuyAgx7gasieJwkch/fmrcVdudn0Oi5ttMwN1DjCm/E2cS4+gLy+BWA1Gtzqtceqa
         qX9rwwF3Fljaj7f4J1ZqfZ1hEA8ZCKADc3zp7NIMGxlPMgvKmcOuMGSSrIAq4JRI+7Y+
         a5ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BkaucAJxYBxnZUU+Wtb2ielcxIHFUNohrm+eQhKK4MI=;
        fh=yPk2Pl8Pzq5lFRdhuNex0GQqtHMLHADNl0g4+kHZrbY=;
        b=uugqaGmjAcnnHSSjnxL6d4hLf1fqlWHv+OKMXURtmWzjNMtXsGMGeIHTkcjghswiMg
         f2AoLkqdwc/IfW5+k9Cu7gB14GSyEPsLDIxCZSfsQdS9b5K8CPBMqOFy/BvOjct4rLYr
         N8eRY22oYOn9DGxjsutfXvNmjPlXOdqUNEOJB8GyUw9oP6atDAZcOMTBJJ9P6ojmP5dX
         nYIMx74IhKs6XR6dTeaQarkhZYOwZ+EN9o7xG7KSGE7GjHm2e9XyGRV67lXVNngxVpXp
         ZPzG4UoeeesgAdAIvoDfT10Sch2DnjY8t86Pvf023YMmCWbuahvHmt409/85hd0OIcM7
         FaVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=6IMexDzU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::931 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1693503929; x=1694108729; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BkaucAJxYBxnZUU+Wtb2ielcxIHFUNohrm+eQhKK4MI=;
        b=FnyLF4onSEaLVzkMGFBdwncwPBXWGfy8II/EUCoDA0Da/SOZcxOaD80GDdNULgm+9d
         d1W1KYLaStj9n3bSZxkx2xsu27rvS2yMWBpPWHBQ5b5BkU9OGsc2K+QOxr/WF9cIo8b0
         VujYYoJWAeBS8yzvje8akYSiDfrygvF3WKTO8BLFvLm3WGtVAWuCy+KSeW+dhydLv+oG
         Vo2BTHKWdZ/EHIlLolTtQyhNh1pZxVh9Azyoxl8l4VsuYxpICP8vB9uVAsaaLRcAG5gO
         ERU1AOEf6iEZ5NWBg1EOWkRk521IcP4iMR3Vis6W4wY0hUH7uulZyssXzUObuw7hFWxw
         72bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693503929; x=1694108729;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BkaucAJxYBxnZUU+Wtb2ielcxIHFUNohrm+eQhKK4MI=;
        b=RR2JJUW3u5LyeY/H1iO9QFWczsThEJDgiHIUw8lOH323R1IGzMhe0EP4ot1BeS4fc9
         HPkM9Ohp1eyBtmQk0/39MOOxrsvhiz6ZH50EYHfUkctvhC3hfCDqvC44mgTcbemkfKJh
         bpkmkyPwKKT4odi82dNNY/To1nFA0RGzPy/x4TvH5ElEIuoSWt0Cq+06pZKeyVXssfIJ
         QnLJCVAZKZXNZR/h09cRD5E/NxE4VqZZYo3hp4zgHCjawExw1s780mHCQyTCTvx0ppNi
         XwiygY0tGlfazPWgqj6FtBHrYrNiyG3g6w3eJrA9D61cQVzDyn7X6rN1VNgUSMBTxVvr
         QJxw==
X-Gm-Message-State: AOJu0YwY2CMKb112oDU5ztNvRmVfemIePdurEax/yqUuCuZo3d3ttJYQ
	H/ygfofsrm9H0TG+Le7D5w8=
X-Google-Smtp-Source: AGHT+IHsO3ZESShUYXG9SR6E1Goc4EbFbi+lueV9e1KAKL37oF/Ie9F6fDhz/Ei2jDOfMROIv0AKQw==
X-Received: by 2002:a92:dc41:0:b0:34c:bc7e:896c with SMTP id x1-20020a92dc41000000b0034cbc7e896cmr154050ilq.1.1693503928988;
        Thu, 31 Aug 2023 10:45:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7610:0:b0:346:64c0:449c with SMTP id r16-20020a927610000000b0034664c0449cls408869ilc.0.-pod-prod-02-us;
 Thu, 31 Aug 2023 10:45:28 -0700 (PDT)
X-Received: by 2002:a6b:7006:0:b0:795:c6f:59ff with SMTP id l6-20020a6b7006000000b007950c6f59ffmr6557073ioc.17.1693503928313;
        Thu, 31 Aug 2023 10:45:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693503928; cv=none;
        d=google.com; s=arc-20160816;
        b=Klkbkr3Yu/pI8uu73Gb1NsXFbMl0mva2U26icb7+k0Qb8wHj7bbJxDGTgnab2caZlR
         CoQqArXFHEyE9pp+k30MPE6iLIXK0N8DFmZV1F23vt3lAPbEaAjCKEyJCYIi8gAkxn8+
         F/RuLxc3O3w/A+vwEog+4J5rO36hy8TxQqOfj0mNCwQjgV8dKrTLjc6aVvdV71nQG6FE
         SJUaVx0BmJXrg7UIsBYIhP/aR+UKw7CqB+vMRzd3k4Zn3Y3tahsCEOE7SLDtYziLebDi
         Esd+Eazk/yfW9PbfWeYTw2tGuHQDiAJ8rRNvamp7yuhc2VJ1S6G2n9zsJfLMp2f8x1RL
         09HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3PjK5svytdPnfL/m49ERN9u4S1TwPwbqfx3ubmgNjKU=;
        fh=yPk2Pl8Pzq5lFRdhuNex0GQqtHMLHADNl0g4+kHZrbY=;
        b=kPbsT0HLaVVXa0CZIE5Gm0c6wmJK5i+o8uzMXt6VOBxV4gt6uVEDQaoP8Ii/nOMSJ1
         m4YT5DrLoZTnNKLmOv/hfaR4fYvFcFZKibTTJnUL1gMDnjq1iFvCERYCnKQqL+8Udm+m
         Ef6+qvTT+TqrXzEguh03kBhywiSZQs2/wY1cAMfjL5mQ1rlCZleGTPkc+rs+S9lhfZvU
         FrvcfVmpg9mvhYswAvxCALkS4VlQa4eTFiQeQT1dKZxV6rIy5YbiyW4zi8iH6hZwY1qP
         jTR2ZZeoB7B7W+ncjuxGs9yPFPGnUfThaE0yw5zkqpaknqtNQ0bdVC5W33f/vZteJnVT
         aoGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=6IMexDzU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::931 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x931.google.com (mail-ua1-x931.google.com. [2607:f8b0:4864:20::931])
        by gmr-mx.google.com with ESMTPS id y70-20020a6bc849000000b0079186e18eb9si288428iof.3.2023.08.31.10.45.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Aug 2023 10:45:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::931 as permitted sender) client-ip=2607:f8b0:4864:20::931;
Received: by mail-ua1-x931.google.com with SMTP id a1e0cc1a2514c-7a25184a648so503091241.2
        for <clang-built-linux@googlegroups.com>; Thu, 31 Aug 2023 10:45:28 -0700 (PDT)
X-Received: by 2002:a67:f947:0:b0:44d:5718:d72a with SMTP id
 u7-20020a67f947000000b0044d5718d72amr270390vsq.11.1693503927565; Thu, 31 Aug
 2023 10:45:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdk_GVOdT==9=X=+s=xaD4PrvwXWoKePNJJ5WRmYHkrTqg@mail.gmail.com>
 <20230830194920.GA2263564@dev-arch.thelio-3990X>
In-Reply-To: <20230830194920.GA2263564@dev-arch.thelio-3990X>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 31 Aug 2023 10:45:13 -0700
Message-ID: <CAKwvOd=+Uuzm5w=mbmry5VNX4sjg+=MbZ-h3GmNZMqh+YmTCqA@mail.gmail.com>
Subject: Re: RFC: blocking posts to the older mailing list
To: clang-built-linux <llvm@lists.linux.dev>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20221208 header.b=6IMexDzU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::931
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

On Wed, Aug 30, 2023 at 12:49=E2=80=AFPM Nathan Chancellor <nathan@kernel.o=
rg> wrote:
>
> On Wed, Aug 30, 2023 at 11:46:39AM -0700, 'Nick Desaulniers' via Clang Bu=
ilt Linux wrote:
> > Hi folks,
> > We established the newer mailing list <llvm@lists.linux.dev> a few
> > years ago with archives available at https://lore.kernel.org/llvm/.
> >
> > This is in preference to our previous mailing list
> > <clang-built-linux@googlegroups.com> with archives available at
> > https://groups.google.com/g/clang-built-linux.
> >
> > These can both be found on our homepage
> > <https://clangbuiltlinux.github.io/>.  While it was our intent to
> > deprecate the old list (and still is), we have not yet taken any
> > action to actually block new posts on the old one.
> >
> > RFC but my plan is to change the following settings on the old google g=
roup:
> > 1. Who can post: anyone on the web -> group owners
> > 2. Who can contact group owners: anyone on the web -> group members
> > 3. Message moderation: no moderation -> moderate all
> > 4. New member restrictions: no restrictions -> new members cannot post
> > 5. Rejected message notification: off -> on
> > 6. Include default rejected message response: unchecked -> checked
> > with link to new ML as message

These changes are now live and in effect.

>
> This sounds reasonable to me. I am still subscribed to the old list and
> the only stuff I have really seen sent to it is just junk/spam, with the
> occasional mail that was sent to clang-built-linux@ and llvm@, so there
> should be no functional loss. I think we have been clear enough with
> people who were still using the old mailing list that they should
> completely switch over to the new one. If they mess up and get a message
> that the mail was rejected with an explanation of why, it will be even
> more obvious what to do :)
>
> > Then update our homepage to note that the archive for the old ML is
> > explicitly deprecated.

merged: https://github.com/ClangBuiltLinux/ClangBuiltLinux.github.io/pull/5=
7

> >
> > I think that will prevent further confusion, and sorry that I haven't
> > taken these steps sooner!
> >
> > Thoughts?
>
> +1 from me
>
> > Another outstanding issue is that it doesn't seem like there's
> > available tools for exporting the old google groups archive, AFAIK.  I
> > would love to be corrected though.
>
> Unfortunately, the tool I think I had looked into using at one point is
> now marked as deprecated/broken:
>
> https://github.com/icy/google-group-crawler
>
> So aside from us looking into how to export the archives that we should
> have in our own inboxes as mbox files or seeing if someone else has
> built a tool of that sort, I am not sure that we have much recourse for
> getting those archives out of Google Groups... Fortunately, I am not
> sure that we had many discussions on the list that were not also Cc'd to
> some list that lore.kernel.org archives. In fact, you can use the c: and
> t: search option to find messges that we sent to that list that got
> archived on lore:
>
> https://lore.kernel.org/all/?q=3Dc:clang-built-linux@googlegroups.com+OR+=
t:clang-built-linux@googlegroups.com
>
> So I think that might just be good enough to say between our issue
> tracker and what we have on lore, potential loss of access to our Google
> Groups archive should the service shut down or experience some sort of
> data loss should not impact our ability to look back for answers about
> why we did or did not do something.

Added to https://github.com/ClangBuiltLinux/ClangBuiltLinux.github.io/pull/=
57.

>
> Thanks for writing this up and keeping us consistent!
>
> Cheers,
> Nathan



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3D%2BUuzm5w%3Dmbmry5VNX4sjg%2B%3DMbZ-h3GmNZMqh%2B=
YmTCqA%40mail.gmail.com.
