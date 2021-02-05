Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIXM62AAMGQER5O5VLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id D058E311343
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 22:18:26 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id r23sf6196833ljm.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 13:18:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612559906; cv=pass;
        d=google.com; s=arc-20160816;
        b=syorYi95kEJXHtYhkN3FX0plaONcOrZGg0F1zhlv/xGTu3LTTCFxo3zus+Jw15RO6E
         V2nUfNw3uApuQd3JXJsSWLQlLFuvMhaJh/gGoQUGyBYCzZljP/n0m4oGPxRPoz0WsaQ0
         qgpwNHLMzozInemSvEad18PIRMNhSTAqDHEs3rymnb0ZrjAqCJPJttLK1zlHQShcMHig
         aV9Nwzd0x0vq3nx2ekPugw+My/pGvPg2GAK5LqCGLT5NrZ5vBngnZiymrnb2/3vUtNNI
         dBvRGPP5CBJo+m6J5o3kta2TcUmJ+5FlwyFKipby/K1R1LZW6KKEQHrcYNbIjxYA5QkT
         iK7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rM4G5PxIMtPLckfrCdVVUEFWyYCg+jHnz1d3uidtsFQ=;
        b=SBb8y5xymefhdiTRZ+0H/HVhlipWqWnjbkPk4UHvSiJ9eYjrVPbxpNb8VhdTugu1vL
         KpGxZyS2Rg1OhLWj9MNWC4RFGk4sCB68dgNswgX8JydMYSAZCX0Y2T5wJRixdnwHcnTd
         v2GmKtdUiHxu7KwKCKlysJmR6+ULoSTeAReJt7HlpjUdf4A/UN28Q7i8k0AFlSDfGjCM
         t0lZTPSW3rLUU1REN1L8EWYNwUEP1QwcH+53pXnktXOUCoBX2UBL+Ix5QvjBTeFSZn9A
         4scXyHabaQ/AH5YPrGm20RLdNPuk9gUVSJWkrigVWnmJp9TcnpU7X5lhn+1AfEU24G7N
         9rOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rtet6B6o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rM4G5PxIMtPLckfrCdVVUEFWyYCg+jHnz1d3uidtsFQ=;
        b=fer/+KSR8jajsKJwvO1KRXPu2IEkOeICCBc/dTJhpgMZCEUuf8PijF/WvdZMEwfAZU
         Uxh02ta1JCWmSapdJT23nvj5DxPnbMdM9vmFWo1wM7wg8BsGGi1poPFcDytq0+KFj6PU
         2Ok1wdAvI+cdn0LZBUa8pQ0/y8gEYxg4kljafG1eb//rvF0i/Wv4Qd20gXp3SnOKxeYC
         B7wHQgoIChGi6lMcb0t8KBK2Qphwx+pw+6khcrdIvaPhJ/5QLJfwximqmf+461egDbw/
         ZfR+C5nYNQeIl/mqP7bRe11Vror9YN2S+bS5blATRm7MMYoKS1YhFnoZRl9Q6VgVEGTH
         eZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rM4G5PxIMtPLckfrCdVVUEFWyYCg+jHnz1d3uidtsFQ=;
        b=Vw6OsMgIZ3Y0Rt2POeQfmPevCpqbZgJ9NSJmDfMLTSlB/VRxYcF63AoZIFyWT+7Tk8
         +APXkt/hqgHwc1l0xiiHCIdpNEeUIUIr8g7rg+kFrpBT2kWuKGu1ylg4b8m6Qb9v9sOE
         /BFzZEbsEq87M/pllTqCuacQpvc+mA+gWZ1omtufL1w8KruzsH+lVwByAXFUEEh2aAFU
         WCCqVnIwcrLmIZkD1xhTtDZiF4vGSIYAPezmpHOmYcx0qonjY9Iw83CNetRGiym5lcJf
         0KR4dYzmLNS87WsJVbrC54fpjeftOxaHAJeg04PrD4DZbfVsY8APtO8WJD5OBs2gW5VP
         ofhA==
X-Gm-Message-State: AOAM5320VG55P5FYCgLYQgGKh8NPQT9xOlBXbNk35hvBxl9dKsM4qGr9
	JNWu3CmdwowgvMIOGAU9Jaw=
X-Google-Smtp-Source: ABdhPJzhHLPo7X8l32s/U7Tk/MLxXmWne7EiuBD4cezV18JgzeNvPYVjcl+F7mcxT3k26EWW4XH/cQ==
X-Received: by 2002:a05:6512:534:: with SMTP id o20mr763140lfc.354.1612559906445;
        Fri, 05 Feb 2021 13:18:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls504730lfu.3.gmail; Fri, 05
 Feb 2021 13:18:25 -0800 (PST)
X-Received: by 2002:a05:6512:48b:: with SMTP id v11mr3595400lfq.227.1612559905401;
        Fri, 05 Feb 2021 13:18:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612559905; cv=none;
        d=google.com; s=arc-20160816;
        b=QOR21afsNn9QoInzBaGOduuJFkVk9ApCTwwuv5ZE6VOBB0rdqdPt2pCq3O6rGbyZVl
         3u8x9/MEyVyZy97vDGdDRg9fAbSdiQ/0jS+c5d0mAInZjEwY/3yDpajhI5iYyVynNbFq
         YCXW1OCS44x9Lyz7Q/EyVgOAlsyDyItXTPoaM/3D8vnR/GsSQAIAeNGP7uyWf/Hifud+
         VvAjz/ivHIIyItVK8uCMoLLQFx+unEEg5Y8drIsPCAUfJUS39mZBaTQOicxVuM3dLCZB
         31i0XBiWWJr8B0QV/njn0V+qVk4TyvAm5lTsBTQOdpGeAFWGBrbPsDX6kPTHlm8qtFVR
         IZgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M/mNa0cCFnCBPv9oOHupxAJvNU5NKzX9ZpjTVG00V9k=;
        b=gUPGU6JNpiO5Be3GbgyZY6SRTm/o+XARzxp8dYCPBlQIrRY+ZaOkBtV9nGXorzydzi
         E7X+TVjwYaCEmLBYmPOKUymCq3LyPzTMWcFSo6GlNGGWc87s5nUydaNohNItUjcWWulr
         qVATG+iBRWvCuiWCKqLOo88E2HiU0vTMhM8uG1/8MbN7VaEP/Jv06MXexJxh0tjtTbb+
         KenyVNwKZdifr55GFu8kxHS3fEx2XJmo8KxuHNKwb3gvYG7Nv9VhJ4IF9eUaHgQelypF
         JPDPyTq4T7eGjVN1HYH+VHHiw7GNMxHY2IYA1YzxcxwpMQv2qcU5WBY+QMKI73IE6Ml8
         H06A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rtet6B6o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id h12si473508lfp.7.2021.02.05.13.18.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 13:18:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id s18so9459097ljg.7
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 13:18:25 -0800 (PST)
X-Received: by 2002:a2e:9cc8:: with SMTP id g8mr3809288ljj.479.1612559905021;
 Fri, 05 Feb 2021 13:18:25 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210204103946.GA14802@wildebeest.org>
 <CAKwvOdm0O8m_+mxy7Z91Lu=Hzf6-DyCdAjMOsCRiMmNis4Pd2A@mail.gmail.com>
 <20fdd20fe067dba00b349407c4a0128c97c1a707.camel@klomp.org>
 <CAKwvOdmT4t==akMN7eHWgD_XdpN--PLpUj8vgujGJ4TpREvteQ@mail.gmail.com>
 <42d2542d4b7f9836121b92d9bf349afa920bd4cd.camel@klomp.org>
 <CAKwvOdmHM8srtLaEy+L_XGzO9TBbhP3csQNAhUTH_TmeDePkDQ@mail.gmail.com> <8696ef2e86c5d8078bf2d2c74fb3cbbecbd22c83.camel@klomp.org>
In-Reply-To: <8696ef2e86c5d8078bf2d2c74fb3cbbecbd22c83.camel@klomp.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 13:18:11 -0800
Message-ID: <CAKwvOd=jMykgiR+fthEVeaP1c3-N6veZhKd2LZjeJ5KaqF4PHg@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Mark Wielaard <mark@klomp.org>, Jakub Jelinek <jakub@redhat.com>, Nick Clifton <nickc@redhat.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Yonghong Song <yhs@fb.com>, 
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <nathan@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Rtet6B6o;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231
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

On Fri, Feb 5, 2021 at 4:49 AM Mark Wielaard <mark@klomp.org> wrote:
>
> Hi Nick,
>
> On Thu, 2021-02-04 at 14:06 -0800, Nick Desaulniers wrote:
> > On Thu, Feb 4, 2021 at 12:28 PM Mark Wielaard <mark@klomp.org> wrote:
> > > I believe so yes, we did a mass-rebuild of all of Fedora a few weeks
> > > back with a GCC11 pre-release and did find some tools which weren't
> > > ready, but as far as I know all have been fixed now. I did try to

I guess I'm curious whether
https://bugzilla.redhat.com/show_bug.cgi?id=1922707 came up during the
mass rebuild of all of Fedora a few weeks ago?  Assuming the Linux
kernel was part of that test, those warnings would have been both new
and obviously related to changing the implicit default DWARF version.
It's possible it was a kernel build without debug info enabled or a
kernel version old enough to not have that linker warning enabled, I
suppose.  It might be good to check though, that way changes to GCC
that impact the kernel are caught even sooner or ASAP. New diagnostics
added every compiler release come to mind in particular.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DjMykgiR%2BfthEVeaP1c3-N6veZhKd2LZjeJ5KaqF4PHg%40mail.gmail.com.
