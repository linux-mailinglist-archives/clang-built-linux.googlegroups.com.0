Return-Path: <clang-built-linux+bncBD63HSEZTUIBBXG6R36QKGQEN76WRHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 226362A7852
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 08:53:07 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id d41sf380666qvc.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 23:53:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604562781; cv=pass;
        d=google.com; s=arc-20160816;
        b=y2gwenFERbqhVlQr/Y83LxgFvcpwjvBuB7crQvC2F8F9CyMrYdGgZfhO/3wLKfNBZT
         8nxdlg6iYHPaPygVXvqRkwmbq82i3iuN051us/TtRhWpranV9/A2WmaTkFVB/5UbbcDB
         dAwboygEZYEYYAVWV816GCwbVtHhKBewzesr7fXN4atj0stLZ8Ijfc3Srw/0xX3MwmVA
         SPTzEwgeI/fsELYj+s9TsbkNcOzHKwParcyDS6YWu7dyxnLB2wR308hZRJkaRkpvESri
         8g8o1zU+cnqbGWG4sa9vpc8h1NdN0QHF1/0SSUvODVq3iEjOVSMZzthKSd/clqJF5f5r
         hgbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=FSif5SgTjF0QDj+70czNInsGrPzfrjp0G+DsR9L6PX8=;
        b=TZMBcJi1hig29GC1IHR6nomMdvzRYgtPzioWOVCu2MUB8xsKIrWYnrKFkSeazHM4u1
         WXWyVKVoLGeqHScSiHHCxp9bNWuP1Eib12hPXxQj081e99lUfwr9c239ylrCzcs5XMHT
         gajGTryeXkhmKT3f7lWIl2EfySSE58MwjhjgiAqNKk1MmdUqhCKW2scR5qqpOXSiP1iG
         mMvvVZj3xH1O6L5orr1bB89H0yY+zYBpSjEwsIaG2+60UqR9PeLe1+rDJnBFzKiBzWbb
         kcYp03so96WdoCWF5tQuRpJXOsZiNr49nTMAF/hJb8sHgfiNo/zS1XKt2IAa7nrE0xbv
         gLaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="KXKwU8R/";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FSif5SgTjF0QDj+70czNInsGrPzfrjp0G+DsR9L6PX8=;
        b=O3Tm2K7s9rHD3Qtdz6aFt8RQjCEzl+TMd4c66oM/cGpXLWux5GsWcqdyDrgti77xvU
         RQdWj97/MaIrzQv1+d4ypl4gaCEIn5EKlubpi0/pmENVxV/eUcx7iMLD3CRF1+ta/IV1
         027AoXcz5FnUR+xJuXliIRrhiU530pSwB2kXI+sHuu6mptvPa5oTqzrPM5pxYAn98gfE
         i/xxoXiJlConJUTHcg+XqjcbeZKOUlIcTWoGRTN5eKRhuzeCTJkf+xs/M2MoIzAAnBhx
         sbbqVtVSLAMa0VZAZWYhc8zCeyM3s+e2f7nLMd9ClXicRNTIEpB912k0uPShx+I6Hhyy
         nOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FSif5SgTjF0QDj+70czNInsGrPzfrjp0G+DsR9L6PX8=;
        b=CnMWJXxd7ACkWLaLv0U6or0z7sxQGLEolunxg2QPDjknIgirFvLLGqUEvr5Gjd/Q6M
         lFI8yB+C2L3VxkWfXp99F1N84ehwPwK+ZrwokIDI6COmpO2DGoIPMomfftTQ/+Tg2VM0
         Lmr8zCBygbP8hUDZbP3WRN//G2BNFH62Ka5xIuYzuVp9PdVzQX+U9viPPMajzX4sqSeQ
         wSBRbyoJaMx1yfx1tJP10KF9R4aODgjVoU9jX83edxoeHCpxi5ZS487kX7e4KRgs2IGr
         to1/TECQyfhKsczCt+XnBVKpZIGpME6ZqflJMOiI7PzKUdZYB9c/Vey8dR08jcAZosqF
         5wzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bkAT9PmwlNi7IW1USzCn2X0MT/xW/xBbETO/tit0q225P4dAs
	0womra1np4vKzFQtinNhQ/g=
X-Google-Smtp-Source: ABdhPJxV1H6Mvke7fC6oZvUD5B8+JjTppLxpojYy/ADwEbTUJTQfrHXrfBTnYWuzXZmP8EmJm6vomg==
X-Received: by 2002:ac8:7110:: with SMTP id z16mr906694qto.14.1604562780844;
        Wed, 04 Nov 2020 23:53:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b50:: with SMTP id 77ls394145qkl.9.gmail; Wed, 04 Nov
 2020 23:53:00 -0800 (PST)
X-Received: by 2002:ae9:f44a:: with SMTP id z10mr920560qkl.247.1604562780321;
        Wed, 04 Nov 2020 23:53:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604562780; cv=none;
        d=google.com; s=arc-20160816;
        b=DEazGX2M4WBxMIJmNllB9x4isTQRNJZrMMFuuu8azaL7ii4+23/3WrXT/n0E17WLy6
         3ezCk8AWEML5KFaGVNWaeSKWjlAb2FRt//H8pG0H5zpaE/9FWLOtAZAr/iHH1R/CAStj
         /gbvBmNO0mSIloZthSiLXZy50QVN8Apn5rYUVgsFgEJjWUOyrhgp6EqaRFuimoK63u8s
         xqP6pDjn/qzLD4NTyXbLP3KLMPFEE2CXPn+j//efr5b4Iw0HjuvMfhpHE+VgXemPaUCZ
         cxf/8EG8IAqBR3MMgwRTi/aTBMxhljTEzAwwyv4LaMabDiz8e4J/HOjHACNRz19u7xDg
         7EAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=q/GfWNonpNsEgQjE7uoxbCQqxfRIVl1dPepjcnPFoBY=;
        b=uJ2lc4QHCi9nyZNs5JXZGT88y2EETTTGjlttWRyPgIwK5b52o28RfzBnI7Yfa/1w+h
         8X/27PD+St9lPyV5mpbZTQxpv2c7ZCJNnKIw/ZkUCohggu/GZc9r48KO6aRWizlHr/n/
         hhIFGR/oKqw7Hg9IY+LErmBTUvbyvn4ANGtWOheD16Vy5ewfWgifMMtaZKgHcaqSE/Oa
         oqcyAx2sDCzDYS6uEygVrLuuowB9yUwns3y2j83VcQBq+AM8ty0rIhRJPV+pZcBq+Gbx
         oLconr9gf0LG0OiwI7fPdsHPmMiECRD1kq8Ofz57Nk8eb+i3HV+GHRFOv+PVmOIjW5Ei
         0nRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="KXKwU8R/";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x11si56308qkn.0.2020.11.04.23.53.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 23:53:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D9E6B22201
	for <clang-built-linux@googlegroups.com>; Thu,  5 Nov 2020 07:52:58 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id l36so615554ota.4
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 23:52:58 -0800 (PST)
X-Received: by 2002:a05:6830:115a:: with SMTP id x26mr919810otq.77.1604562778074;
 Wed, 04 Nov 2020 23:52:58 -0800 (PST)
MIME-Version: 1.0
References: <20201030002900.GA2248731@ubuntu-m3-large-x86> <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86> <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
 <20201030075655.GA1848109@ubuntu-m3-large-x86> <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
 <20201030080438.GA1849056@ubuntu-m3-large-x86> <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
 <20201030084519.GA3748061@ubuntu-m3-large-x86> <CAK8P3a1Ckn5E0Ce+0xVFbOKVYdsyzjeRZ0Z03-OsVC8yaYFp2w@mail.gmail.com>
 <20201030090945.GA3635064@ubuntu-m3-large-x86> <CAFP8O3KuaYTEvmWK1pnufQuH0X3Eb1G6DK9x7mhjSDy1y7d1TQ@mail.gmail.com>
 <CAKwvOd=YTcdyJ30gV_U8mHP5ZfH2KcE+fSskog9GwUysrGobFA@mail.gmail.com>
In-Reply-To: <CAKwvOd=YTcdyJ30gV_U8mHP5ZfH2KcE+fSskog9GwUysrGobFA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 5 Nov 2020 08:52:46 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFq9QmdstHNoyGh+gzoEBCy0nav63HXzRZa9BM5JHKsNQ@mail.gmail.com>
Message-ID: <CAMj1kXFq9QmdstHNoyGh+gzoEBCy0nav63HXzRZa9BM5JHKsNQ@mail.gmail.com>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="KXKwU8R/";       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 5 Nov 2020 at 01:38, Nick Desaulniers <ndesaulniers@google.com> wro=
te:
>
> On Wed, Nov 4, 2020 at 4:30 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@goog=
le.com> wrote:
> >
> > About "ARM: Replace string mem* functions for KASan", it added .weak
> > memcpy to arch/arm/lib/memcpy.S
> > However, the convention is to change .weak + ENTRY(...) to WEAK(...)
> >
> > In particular, clang 12 will reject `.weak memcpy; .global memcpy`
> > (they had different semantics in GNU as and LLVM integrated assembler
> > for a long time AND binutils maintainer agreed that .weak and .global
> > are strange and should not be used - though binutils will not make the
> > change to cause disruption)
> >
> > Please see https://github.com/ClangBuiltLinux/linux/issues/1190
>
> It's straightforward for us to fixup; Fangrui has sent patches for
> x86, perf, and 64b arm already which have been accepted.  I forget
> though what is the convention for "Fixes:" tags for patches in -next?
> The SHAs change when pulled, right?

No, only when rebasing. It depends on the maintainer how likely that
is to happen for changes that are in -next, but usually the commit IDs
are stable once pulled into -next.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXFq9QmdstHNoyGh%2BgzoEBCy0nav63HXzRZa9BM5JHKsNQ%40m=
ail.gmail.com.
