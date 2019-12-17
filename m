Return-Path: <clang-built-linux+bncBAABBQEM4HXQKGQEUH7WF3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id CE364122258
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 04:06:41 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id q189sf1834470ybg.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 19:06:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576552000; cv=pass;
        d=google.com; s=arc-20160816;
        b=jcGjC0DxvbmaL+g6ofZCUuS6qbZwdBgddxL3wlEDkHORRshmeG7UQq2u4m6fcIwW1x
         lLu9ENnDjlBjANuiaIZqRaYjgx6TLsFJRFYvQxRapc1c3MwMC9zUinxztHo5EOXLka7F
         +VAa5ruySXxU0Ei2UIkkQjGV29XvgMj1xqOJq+iFxkspOxVzwpKbKVr7atg8UX6lFWf0
         /SpHL5/+neKxMVYDtE/IyIqxFrLf0bHMME0kmI3m2hKsyKDQaWRqwuz92Ft7R2/h40xo
         zNH71+yR3z5AECRLFlD1/LycIkkKb2wUn/NnGSHxiW91RSP4y/Dtbg+WicrKmSmTE477
         4wiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=nXgOkVuFuc1b5pCSj6d02LIe9WRWwKRauKqJdikRuwg=;
        b=Xu5FkAgG86PKcIBUU/g9bXFKUgz1XMBTWtxUpfSb0CipJCu0jWQ3GdmIPoWT3UvTH5
         qi5sik3dQnqfVQ7oQskSaBkb0lU+cB74eR+sjz3x1OzF/YFOw/GxVez4qWX7dM5Vul//
         sTVytscpkkjteXCR7zFy8gNbc3gn/i+ZOwm2jX3A1RZ0cA+9oKQOkATFjOfzvX4Mp1Pw
         1AdqHnp3wNyEBHP5UrXkSl91zT3n6PYtP1GASiir+zBBuPMqP+Ws527WDGDnO1WG38O8
         hjOOp4uEqW4rW2IxroqielVoi0OIczMiHBrEdpCVjsU9XyeLG+2EWoRz8iArzkjziueS
         YqoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XG0jL4Z9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nXgOkVuFuc1b5pCSj6d02LIe9WRWwKRauKqJdikRuwg=;
        b=ULxcNRDgr1dk6HxPVvvnHwYVGTacM1juFLiBpYyKYKvAgicmhVEjW7juQgTFmZ7wYg
         NF8j9YPc4bt/1ngwQrOs5inQZPMeoMQrBpCRz9lRK3Jtop4opFmKWztgm+VZnmQqvMot
         xTrNpLhDpp2+TAr/sqVZU/kAjE/rkfPVFFXXX4daC+O4CGSSaDH7K7vi/33jOFVi1w4G
         6eLEW5ZTxoKKamDEeN87ZRO/+QKGKzffI+Mnqswepex1qvDPw10uwKg16FvY0Mrky6OB
         fJ6jigew6B64IRWXLl3WqNnfonFNw0qEw7z7cW1HpUTVF//w/xE2gXBAobqMuu/GfWD8
         A2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nXgOkVuFuc1b5pCSj6d02LIe9WRWwKRauKqJdikRuwg=;
        b=AmfH0fmHJFhoiIaZfAkfmqU/sj3y3OQSpZ8WaMZ/ITLrTa/uVdhUT3c41f2q9EUDVm
         1DP/zH3IeOWz6CTR3nwa8z6U69rprJsxQgf9x3ifY/MxqZ+R+XG32cK+JSrTPkowaj8z
         BB0MrUacmK2dJOmNbx/dlashGldqnOTPeuzuoFvOtWFPzRcSngjW4KSJAFKL4pdbsA4b
         M1ux3C3VsDbF5Y49xAKUIH/bMN4sG7CCQw+u+lZAHeoZVxqUbDo3u/53XBQ3YdE35Eg6
         8snbjZMQenHeqc2tGfepxMWDEaU+Bxg2cONOxcJUZjY8T2z62OtUpHwU1JZNnj4HdbHU
         CZgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqw30QHeHS6J7QvKMgYok2wN/9xg8GHZ6bApPVY7rFAYSHrNVB
	rCrRFJ26oYPW8KLattgGEKc=
X-Google-Smtp-Source: APXvYqyTjUu8U7VSJgMszoUmDXhsrP9G6qToEWeWXJGTnAvKi6EDgwwi5CfcluWCmIIwj5GhNGt/gg==
X-Received: by 2002:a81:4c95:: with SMTP id z143mr7910616ywa.101.1576552000507;
        Mon, 16 Dec 2019 19:06:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:eb0b:: with SMTP id d11ls447832ybs.11.gmail; Mon, 16 Dec
 2019 19:06:40 -0800 (PST)
X-Received: by 2002:a25:b6c3:: with SMTP id f3mr23505062ybm.446.1576552000077;
        Mon, 16 Dec 2019 19:06:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576552000; cv=none;
        d=google.com; s=arc-20160816;
        b=qspJGWMcULQWlDKZmJWrKY9ABxuujiHw/JkeJhbUPvKtODRT0pwYBk0eI42seTbIrz
         Rt6nF8HCB3OZMt8zvZB4AI+ydqfVIORIqrriDkK0SJsU37JfrM4RR1eXLPRbWaLzOtrJ
         r7pWwhLkcggZPai0T23n4exbbH9ci/gP1xtgANeGOt1FgV5VwQJfw6P9xfydM9Pu4d6t
         Hz2jidMTj3DaB33ckA7GRhoGtKqVqAxadieTjHNye5ZjnM5Ll0A9JUcBpdNf+annxH+J
         rWO+7hyjT3Ass4z2vlT6HJh6WBZvFW9dSEQw9qyyePe5DBlTDnJJa6vSqHxHJpkeEmZ8
         SFow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=pugGGjF7UoSjVUlbexS6sMjOLhQht+PE5aPlQbu3gZI=;
        b=WHHLWq9V8YXwscofyNUkt6XRLC1AWXLFACwE/OrVBMhl1oI1ozG8a+1WW3dYEVmadS
         0lRU7gHKLYb8nIqVf0rpVV058mkAkmqbraqHdKqd8WIk0Pz8T2qESZed7sx8zl/LDrLB
         5J3kpRqleZN9h5QKEPXjTmfgPd+5rN/Dww6FuQHbdig84uBIoOWebi9xEvDjRbzbtVh9
         T5s2oFER7klVC3AXhIZNCkrCtghEFkUUrfJxD2BwJKu0tqzl0Q4RRqr4cFi5mBYNBxRb
         QBVAtsbUrC+ddGYGF5qUQlxSiMTjtI1vGuAIBfyE5/dTtGz0aMeEir45bSyVX9gNH5Gv
         Oq0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XG0jL4Z9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id v64si1011933ywa.4.2019.12.16.19.06.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Dec 2019 19:06:40 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id xBH36CRs003403
	for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 12:06:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com xBH36CRs003403
X-Nifty-SrcIP: [209.85.221.178]
Received: by mail-vk1-f178.google.com with SMTP id w67so2282247vkf.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Dec 2019 19:06:13 -0800 (PST)
X-Received: by 2002:a1f:8cd5:: with SMTP id o204mr1689010vkd.66.1576551972298;
 Mon, 16 Dec 2019 19:06:12 -0800 (PST)
MIME-Version: 1.0
References: <20191204225446.202981-1-dima@golovin.in> <CAKwvOdm-bhuJMRRN3tyNdb88+_TFd4m3b-7gX0-91VG4djzp+Q@mail.gmail.com>
 <23883331575506134@vla1-3991b5027d7d.qloud-c.yandex.net>
In-Reply-To: <23883331575506134@vla1-3991b5027d7d.qloud-c.yandex.net>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 17 Dec 2019 12:05:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNATRWgfnP_C68aiOLacR_Bhz2oL6DgyUE76gENWfOvvGbQ@mail.gmail.com>
Message-ID: <CAK7LNATRWgfnP_C68aiOLacR_Bhz2oL6DgyUE76gENWfOvvGbQ@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: kbuild: allow readelf executable to be specified
To: Dmitry Golovin <dima@golovin.in>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        Ross Philipson <ross.philipson@oracle.com>,
        Ross Burton <ross.burton@intel.com>,
        Chao Fan <fanc.fnst@cn.fujitsu.com>,
        Daniel Kiper <daniel.kiper@oracle.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "tony.luck@intel.com" <tony.luck@intel.com>,
        "fenghua.yu@intel.com" <fenghua.yu@intel.com>,
        "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=XG0jL4Z9;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Dec 5, 2019 at 9:41 AM Dmitry Golovin <dima@golovin.in> wrote:
>
> 05.12.2019, 01:18, "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>:
> >
> > Grepping the kernel sources for `READELF`, it looks like
> > arch/ia64/Makefile makes the same mistake. Would you mind fixing both
> > cases in the same patch (v2)? I'm also curious about it's use in
> > arch/ia64/scripts/unwcheck.py, and scripts/faddr2line. +ia64
> > maintainers and list.
> >
> > I think if you simply remove the assignment on line 17 of
> > arch/ia64/Makefile you should be fine.
>
> Perhaps something should be done to NM on line 16 of this file as well. Also
> found similar invocation of `objcopy` in arch/riscv/kernel/vdso/Makefile.
> I think IA64 and RISC-V changes should be made as separate commits.
>
> -- Dmitry

Applied to linux-kbuid. Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATRWgfnP_C68aiOLacR_Bhz2oL6DgyUE76gENWfOvvGbQ%40mail.gmail.com.
