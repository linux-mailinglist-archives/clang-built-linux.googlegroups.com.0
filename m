Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGONZD2QKGQEW3OOOXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8221C660C
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 04:53:14 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id p1sf760108plq.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 19:53:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588733593; cv=pass;
        d=google.com; s=arc-20160816;
        b=GCiW1yA5H9RGgwWLSBjruH4U9UaRrZeq0zFylSAR/OBHXK0cY11Bx++bA5+qCeLoUk
         hezUxL2Rv6OZwkfYbzyf1q9IkkckqyaxngTt24sZu7PT4vV4VkDxrVsxgT7X0KC/yBZb
         PIj0Nx7uvs5jUVNMRLPC6AXM2BYQ/Phd+YDC6K4PYnzybfnVc0mj8YXT8/hhtrHp8BPn
         AIvpkJQPu4NsRz2Vxb5apM7FluvVY7g/gGtO0kM2TtixENhl5te7aW+3lqf83P3ELXPm
         IREBdNUGmiLkq9lIBB/oAEoi2GGVSPUIZhgk2CHV4ndtxw3FmImS2U/3J/tVoZ4wF01P
         R68w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kzZQbaM1OgPiSAq1DhtjDsAPz/dC6X6TLxnuMqneIsI=;
        b=hSm/HnUKVAzjKOd3b7Jq5+egWx7Mxv+hGQzV62iD10BL6YTj0wLdAJdQ6fCmvnG5LW
         VJhb3dOTXEP27us4QzglNcoALQQWZomc/6hRcuP4e5co1/xld7dEf1Z1N5CWTklqKZI2
         piN551SWDdPgp69G/L09a0u0q37OKWfPKWDt+NucBsbGFeucjqGli6kXphz8eWMYYSmC
         5jlLx0kS4ik8VAL9mJPZ8PnewTesBc5Nv8VllQ5xYNyUN3UC28gi/6nZguLAo+B+thB+
         XAkMmtVMpoM3/aT8EVOkRhozVuhzngG9Jh17G6+xsyCXBiqHyxIXwzaO0Xkjpri1QkeH
         dWsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j1ofKvDT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kzZQbaM1OgPiSAq1DhtjDsAPz/dC6X6TLxnuMqneIsI=;
        b=mPVAW1H0kLgzge1+p9a/qPq8GSEJkfwUKtiw6Dqp3CTql38O4MxfCTbMJxXBSM1TvM
         GVk4F5/BY88PH1gsj63/x2Us8Om2i1MId6FK33dmxJHvBlaOW/24Y/j9r0VChLHd272F
         9wAlvP10+tU0UUjeFpTZO+5J63Dn+W7Mvp4/ssLVJBgziek36gfvmVCqPRnJr1Z/QXXI
         0Fb01Aky2Pnp/W74sXjIeBKB7aAgtFefcqPnKFpb+m88Va3RCNkUhFxIvOL7O3xwAblX
         QPFHA5k3/lfgJ1xL0TbQJdINmvrfsb5b5yt2H7W8ZjQtXd2Bt9tAlpHxHM+T/Lww7VKM
         QWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kzZQbaM1OgPiSAq1DhtjDsAPz/dC6X6TLxnuMqneIsI=;
        b=EvABWewVv3j2MY7YF7PdbNY53rDPK5U4i3Zley3va+oSBkRtyL/yqDg7eBRJKo2xwu
         Te2l/8Lyzd8p6MLVbHgTpN0f0FktxfGNmAx/7ezM14zapjNCdpJU7SxE8qRjYrqnFgPO
         5G4xbeZ6viY73odMtELs+T70VnmQswPadfK88mwem3mfCaaQpsc98XLiKwU/j8CFFFKD
         ZOOypxqcqGhfVpX1CF8ytR4J/sVmW0ksKcfwjHXawtZJ5DVbEXeL5qG5wBhAwCSPpvHe
         4Niubu3fx5/Ga3udnvQMNy/X8JV3c+f2+wGNdQXlpq1DktSXxJNvZ84ekgU82XEDlw4m
         Al0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYYvo63BvF0GkbVc09Saf1RhZ9BliAJCD16Q5NU0zCV8DtNxP62
	ISxVxfw+9/JT4hLtg7ZmXSU=
X-Google-Smtp-Source: APiQypLYhkjaAdVQur06TRG8TQG0kHcY85OywrcXMRql7RkhMxUGidDOpXUzo1edN6+VjGRCgSj0MQ==
X-Received: by 2002:a17:90a:fd94:: with SMTP id cx20mr6573096pjb.157.1588733593080;
        Tue, 05 May 2020 19:53:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:56d:: with SMTP id 100ls978521plf.10.gmail; Tue, 05
 May 2020 19:53:12 -0700 (PDT)
X-Received: by 2002:a17:90a:284e:: with SMTP id p14mr6903848pjf.10.1588733592692;
        Tue, 05 May 2020 19:53:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588733592; cv=none;
        d=google.com; s=arc-20160816;
        b=sHzOVV3hGHXg6Zo/K0ikFt/3kLuG1qM72sWTZvpxxfubBPYBzSSp/dLY+/EOS/8Qgn
         0wHYdNjDzZLMUqizFIUWbcg+G3jiMuVBadWElato7QuCKW+L0onafFyRZ4rpmRyLUo5X
         7aTm5FiYWGN4u0ppmO9aHR0Mnj7iVVYH63gT0UowhRfGCMPlgaieaEHcUQakTboFPgFm
         LUTjI+tgOsyzFAhdELfC0WZmbGxlKfiF6LSA0itgI+k0/HMUZuXsefvABLUxJDEksdo9
         vOZDCQq2tcX1I3a392IWRke7dmBZ3S7LMwtas5YXAaZ5d6CPAHIzZbwYU73IT4WlipjJ
         7gcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1CtP5FNOcKefe/Fa1C1BLCGuo+JOUuFdH1Z8Djbibw0=;
        b=sSjXA3BMMn8siSixzT28ZJgFVO9t8kIfAfMp9ZWjzo82Frq7g90UeW+irQQ1/50QZo
         D0i6r+VoLfMVeH7ECli7RBMzdt1Vevr01vnXdDgkOqZxXsQj4SX721rrZ3W5S+FRzynj
         xb6hx19/KHgWYT+r73ZSAvnUcVDPNVopEnSiflCSlhymPvJEYWEuExEHyBdYwo9K770g
         t5UxAUT+yTpYVsu/ix/6tyyWcpuKifrXiRnbJfVotsO2G3xyCRMYePVIJ9QTMYSBhKHb
         tELd3wdv8p+XwLwMILdZwVD/tikIynLlBFUl7+ffCuDAx4WkV61Pcz6w3LlT+AIqNiGl
         2Llw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j1ofKvDT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q34si368651pjh.2.2020.05.05.19.53.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 19:53:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id d184so283606pfd.4
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 19:53:12 -0700 (PDT)
X-Received: by 2002:a62:b611:: with SMTP id j17mr5971991pff.214.1588733592406;
        Tue, 05 May 2020 19:53:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w11sm417431pgj.4.2020.05.05.19.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 19:53:11 -0700 (PDT)
Date: Tue, 5 May 2020 19:53:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	George Burgess <gbiv@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
Message-ID: <202005051951.23FABC8C7@keescook>
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <20200505215503.691205-1-Jason@zx2c4.com>
 <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
 <20200505222540.GA230458@ubuntu-s3-xlarge-x86>
 <CAHmME9qs0iavoBqd_z_7Xibyz7oxY+FRt+sHyy+sBa1wQc66ww@mail.gmail.com>
 <202005051617.F9B32B5526@keescook>
 <CAHmME9q3zFe4e1xnpptJ27zywGqngZK2K7LCVzDSoG__ht=fNA@mail.gmail.com>
 <CAKwvOdkrS-P_AS1azSCP-DVq_h8Dhb8YiLTfH=9zzEJQphZTcA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkrS-P_AS1azSCP-DVq_h8Dhb8YiLTfH=9zzEJQphZTcA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=j1ofKvDT;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

On Tue, May 05, 2020 at 04:36:49PM -0700, Nick Desaulniers wrote:
> On Tue, May 5, 2020 at 4:22 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> >
> > On Tue, May 5, 2020 at 5:19 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > (Though as was mentioned, it's likely that FORTIFY_SOURCE isn't working
> > > _at all_ under Clang, so I may still send a patch to depend on !clang
> > > just to avoid surprises until it's fixed, but I haven't had time to
> > > chase down a solution yet.)
> 
> Not good.  If it's completely broken, turn it off, and we'll prioritize fixing.

The problem is what George mentioned: it's unclear how broken it is --
it may not be all uses. I haven't had time to finish the testing for it,
but it's on the TODO list. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005051951.23FABC8C7%40keescook.
