Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBA5LULUQKGQE3UNSB3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD286710F
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 16:13:24 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id j77sf2074245vsd.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 07:13:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562940803; cv=pass;
        d=google.com; s=arc-20160816;
        b=V6JFvHKFGkoCS2/LV0aElWW1n+UvNDgIerM9kFfP1hBuLZ6t2oDGusjLyZzhtxF3a+
         xBmBkQ4Lx5DCxujqOrDEV7AUpv702daXrhFpiqMxYmYC1LWNZg3zaHzYj+vHM4As+hyG
         Uj0o4Astr0oD+Wr/p9yQHnfWraM9G7zfpnbSXbMoTbCXk+HEumuX/Lp/rwO3sN/GgA/r
         QnGp+mkHuLo4vpTZY832WF+DvJkFX8yJsJgNXI5E6G5iOtKkglaqG0XvX3rXZgtkP0Uw
         zrZ/6eEK7Sujif5WZOID0EFmESVlRyCPpLqCpqovwTOn8VfDtou0mYNmQo37waNelZJK
         okrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QezLqptItvjg3VcKWKmRJPbzHCCdG4p141cOir8Suds=;
        b=CCPuutedi1v0Fpc7+dVIq9B0lN3OLFOxIm2s5Kd3ZoluLd8GYohtLGoJ2tlYmAMZBg
         XpI4cgbFu3ZN74odIzScQtven/yLWBuf0yyYMoaj0UerluJEvqEcGS8lrxr21PNLSpA7
         /vCusBhAldI4dSaeacz1hqwYy+pSSYu/uc+IcPTPFxY1DBbrt0gygK26UGcQf4hZJlBV
         QZbWKgso4deL4c4UxNzEeK5LQ2koGaWrKwEczm/rk0oOAUsVsXGc42dmaXL8TL3yG8TD
         UvhRh5hDuv1QYvqMQNH9buwlGwqrz/KVQ9bQCP53U8DR8l8rKuLx29inkRYyK1ZePcBR
         WJsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QezLqptItvjg3VcKWKmRJPbzHCCdG4p141cOir8Suds=;
        b=lnF0IqV3aBYn40RmQnP0CQGC1qc3SFGijXGkwFnPDB6QpLhvcE7JYpn4i8AReLKXfJ
         vw6wNBYsmnw8CZ+HHU8JiOO3J3v7f0M6iUfSEzwCiPXcgKNCBO1BYD01/wHgIVHa3w6Z
         YpRM3k1mn05EW14eHbCMiVNQ54iQ/w2IgHn0WSSIldRkVXzJlv0K3U4MfIjbrUeClKlW
         wO1x58bINzZrqTG7weRA/n+WPiRAowxozDQhqvAK785EE9x/z7tlOtbijdTLZupBtuxY
         mJ7ynTjJbic/3sT7i8NoXTTthOsWWlY1/MdHKArNtf8KL5ifUco94bLruI86+xYRw6Di
         IZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QezLqptItvjg3VcKWKmRJPbzHCCdG4p141cOir8Suds=;
        b=hdIZbYU3TzHQ3X4wg7Zi9Hf133kY1CVHVaSNFP/ZlI39rmgtx0GFVvTga86cXYHFB/
         z3BQjZL/0fQz81uHJ2MKpEV+Ow9+va89t0wQGlOSlFFU5h1JSvPd5QiOP5h6xTsTMeA7
         bzZgCSYeV7hFtCp8SZ3FtO+pKLonSgTZT4fuovQuBcnmNo2BBhRyfMJtuB2Mi46P7TjN
         VyW0Mq/ebvZMdfC/ahCaKaLT1PKBBmYum0/FxP/vBcS9KPqg2dYx3AyHqmLVE0KwiWbI
         AJlk8dpuQqxNdUhdD/vjfckmV7zdpejmOcXsuUs3we+0eUGb7RGQISsAsq1L7XGEjefL
         DfuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW1wWSMx7vQB4sECBWUy2ygW0QZex5j/ZKBVbQehqaDwKFNO9D4
	mY3+a2r4VICPmmMarK3HfEk=
X-Google-Smtp-Source: APXvYqwWcnwNbJoMc8n55FXBT3kXJIbZN2ZcPYK/e5j+tpwCcVWgfUQvky1EF2gDu7THmiJ1l6JREg==
X-Received: by 2002:a1f:dd47:: with SMTP id u68mr5998398vkg.22.1562940803509;
        Fri, 12 Jul 2019 07:13:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7241:: with SMTP id d1ls835894uap.14.gmail; Fri, 12 Jul
 2019 07:13:23 -0700 (PDT)
X-Received: by 2002:ab0:a1:: with SMTP id 30mr8885898uaj.29.1562940803070;
        Fri, 12 Jul 2019 07:13:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562940803; cv=none;
        d=google.com; s=arc-20160816;
        b=Rd97mDlZa77jQG6bl652whlyh2sgWJvMRoKS6TvnQQpLS/MDS95xtHTnkHPEavusxQ
         DXI9nIoopFzJRDvymrgDSkmgsMXAX/pypDpG5M9hamMUNdqjLOBf1vwjocRYXmK3x2uZ
         PKn9DmWeNxAPa3jRk3cVM72Xt2B8EirzOM29DlZekKAMgAT6tpHRaiP4X8iIjg9jRU8d
         C6LmMhpFchcFTZu2UIqwZU0HjAuirnHztSwbguyhAOYdT2EMcdjaHnqx7W/Hzxc63nI5
         npiLxhD5kRBpLeh3qNPmv5PsB8e1x7kvLRLapAGHdtI1xrXo1msN0v0RZx9GJ0gGypv3
         162A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=8c4jxWOyQNYg+EXZEt1rUQ27lN5OR3C4Tw6lA++twW8=;
        b=V01g60AGpW+tWumlfM1wJkdIjxNLr8mtwkO1N7WoHVWrTDz8j0Mnm2Alv/WIwX/o+n
         eY76aI022xjwlDqM6jxrm2CjBKBfvGkItE0gQKjXaqVuOOzHQwoOXzAc18PuXBxFY0zU
         bGyN7Xq6q+1vx0EJM3PBFd9OT8xbsApScM1oltx+6MxIEWbjHQDkqtPO658p4GhjVqWL
         EcjAxFrHn0JvFpma853RhhS2NaeQ/JfjKwOM30zI8GPIW81hMkQ1dRQPLazzDJPz2Kav
         E6iShOxRlPFmSJzncvZWEr9tZN1JPPFR5nkd6NMzHU7va0ezHx8M7F7Xva8v3ZGIW6Bv
         xTTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id d8si434096uam.0.2019.07.12.07.13.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 07:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id r4so6437144qkm.13
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 07:13:23 -0700 (PDT)
X-Received: by 2002:a37:76c5:: with SMTP id r188mr6432948qkc.394.1562940802620;
 Fri, 12 Jul 2019 07:13:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190712133324.3934659-1-arnd@arndb.de> <20190712135427.GB27820@rkaganb.sw.ru>
In-Reply-To: <20190712135427.GB27820@rkaganb.sw.ru>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jul 2019 16:13:06 +0200
Message-ID: <CAK8P3a1zBsjM43t=+tZ6sVuRy2QXuJa5_gaeY5vmEgLWhf0BAw@mail.gmail.com>
Subject: Re: [PATCH] [v2] x86: kvm: avoid -Wsometimes-uninitized warning
To: Roman Kagan <rkagan@virtuozzo.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"x86@kernel.org" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Liran Alon <liran.alon@oracle.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Jul 12, 2019 at 3:54 PM Roman Kagan <rkagan@virtuozzo.com> wrote:
>
> On Fri, Jul 12, 2019 at 03:32:43PM +0200, Arnd Bergmann wrote:
> > clang points out that running a 64-bit guest on a 32-bit host
> > would lead to uninitialized variables:
> >
> > arch/x86/kvm/hyperv.c:1610:6: error: variable 'ingpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> >         if (!longmode) {
> >             ^~~~~~~~~
> > arch/x86/kvm/hyperv.c:1632:55: note: uninitialized use occurs here
> >         trace_kvm_hv_hypercall(code, fast, rep_cnt, rep_idx, ingpa, outgpa);
> >                                                              ^~~~~
> > arch/x86/kvm/hyperv.c:1610:2: note: remove the 'if' if its condition is always true
> >         if (!longmode) {
> >         ^~~~~~~~~~~~~~~
> > arch/x86/kvm/hyperv.c:1595:18: note: initialize the variable 'ingpa' to silence this warning
> >         u64 param, ingpa, outgpa, ret = HV_STATUS_SUCCESS;
> >                         ^
> >                          = 0
> > arch/x86/kvm/hyperv.c:1610:6: error: variable 'outgpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> > arch/x86/kvm/hyperv.c:1610:6: error: variable 'param' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> >
> > Since that combination is not supported anyway, change the condition
> > to tell the compiler how the code is actually executed.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> > v2: make the change inside of is_64_bit_mode().
> > ---
> >  arch/x86/kvm/hyperv.c | 6 ++----
> >  arch/x86/kvm/x86.h    | 4 ++++
> >  2 files changed, 6 insertions(+), 4 deletions(-)
>
> Reviewed-by: Roman Kagan <rkagan@virtuozzo.com>
>
> However I still think the log message could state it more explicitly
> that it was the compiler's fault, and the patch is a workaround for it.
>
> Otherwise later on someone may decide to restore the similarity of
> is_64_bit_mode() to other inlines in this file, and will be extremely
> unlikely to test clang 32-bit build...

Fair enough. I've reworded the changelog, as well as the patch to
document this now, in a way that should make it harder to introduce
the warning again by accident. Unfortunately, that #ifdef check
cannot be turned into an if(IS_ENABLED()) because kvm_r8_read()
is not defined on i386.

Note that the 0-day bot now tests with clang as well, so you would
definitely hear about a warning appearing.

v3 coming.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1zBsjM43t%3D%2BtZ6sVuRy2QXuJa5_gaeY5vmEgLWhf0BAw%40mail.gmail.com.
