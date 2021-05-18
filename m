Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBIFHRSCQMGQEMQAMWWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id F00B5386EBB
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 03:08:49 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id a8-20020a62d4080000b029028db7db58adsf5023565pfh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 18:08:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621300128; cv=pass;
        d=google.com; s=arc-20160816;
        b=rS+plcchDYpJwrVTvyaT3u9hmddLyzW5BIRaklyekZ58ftS7Z5qevd7odTknKOILx3
         VnpudrLv7nNwYkxWMO8rlQ1JEVbHs2Fo5b1dvkP0mDLdioYxB/TwldIbEFO8F07MsrJx
         s4lizguH9qPbTTJycD0+cK5HQ36vCZ9xSXDQ8zRxPBS5NxZP6UkoV1b218xf4LFT0CzZ
         E9C22gkvJgG1p9/SALq0XT9t3CtkP8VQPqUgCAfXp+bWakrgEtTmzsC6lEqXP7jww4MT
         xYPKrhvLLtv9kv1xnLmUJpYlSaYF/yvt68Ian9iNiSKWh4fTxCYl644bUJe1fk603nu/
         lvPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8tR2FAEJMpk6V0+Nv1euv7KWYsov+YZGKby3TsL0zIk=;
        b=vVQ1RJ7vE5CexP8Fgv0g2jMMGlRyvaPt/raKkoQCCy8xPWjrkCclnh7nF7guGl7c6o
         /VA6RGb0QAaF+gGgUaJbYbKKsiOI6G63T9FMcDfpfdwZ1mOUwnrqDYr+2iLl4B6DEgV/
         /6Q8tujNmkR8jiuOSJYjDiGHrQpKAPsBgQZ0JtXm5HxGxxuvIagjEqISWUl9+qxHyIXO
         29403bgplIE66fc+gcR4HIl0+SgyEGBtEehA/V1fa9DoVBGwFSoSLfdFUpBQEm/8DD3W
         B0zf9ZAc1VbTUGs1SOjJV6Zqc8sqm7DYhFdM/Ga1TfWA11WhVe0dRW7fIANmbBAsVslo
         iHHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NY9sxZlN;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8tR2FAEJMpk6V0+Nv1euv7KWYsov+YZGKby3TsL0zIk=;
        b=FqhIjSip1dBf1Bk6wKNEfQf8t0mozEmxZ/tY8+1MVRipY9tF5dmoCVMtQpEEx9R10S
         ui7boREkoJVPN1K5ti8WCG+S6IQo+IKFiOC0aoYJAYvwXT+dd6rcgHQuMj48OoC86620
         PwgYNtqFatONjMP0fhVfF+WVYjvlBMuBDsA80q/FkApbtXZWvjn9gfMkxTNcLII6JeHr
         aGKTLIjE387rHHaDKF1FxVSPiTw69Urmg9jhhWO27W3kM8HC9GDhF8uvdqcSSX4ebbga
         mttvCCL2D1aerctM3yz/MMdZy/TMGOSqAQEU2DKvAbtrXOVBoZhUKLvcu2aMUIUN1LaZ
         qQ1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8tR2FAEJMpk6V0+Nv1euv7KWYsov+YZGKby3TsL0zIk=;
        b=qaSh4+TqyaVv2rSVG4WL0PQoy00OlkPE9ifb0XqTNWMm/C2k/37EhEELYpjntZinX+
         sagGHDeHPLvk5HIg64/nnhVp5nFvCaSJWDdSWR9nl6cqRF4VgH8d9rayYG39O4SGiIqw
         9qeA9wPq8vcYHZL1XXJhqC7p4qnaIu7nE1hPGGLrHCR3u4q2zzZehLh8vl5YbB4TJr8J
         uxtTega9Q+vbgZiFGURyH1K5FtijQmSDxlaLccY9A7IYs+HlCE+jD/PTcwFtYYg5fwp1
         SnftjTi/0Vr2RfXo4IMemxIf04NJfJodNwDB9YF4PbA9RqlD1TOYLE8akHcrHwpBtnfU
         6SLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8tR2FAEJMpk6V0+Nv1euv7KWYsov+YZGKby3TsL0zIk=;
        b=TMXij/Oe5L0ms/5ArqLBLjWgQ2YLZNzijpNEmGEvM+OtV1jOau2P8mAOHalW2SK9GN
         7mPU46aDgiYUHeT7rV+yXX2UFexuOqXVaSXdXX2cHPb+iGmW1/Yol3abcOtJqgQBKc4F
         JmojNRanMRaNcrI1EFAKIVFuyId+RgN942CjvrbFKyXzvOMPRvu/qdugtXeZfv36B2FU
         s6/Ym22p97q/6xLiERMPZjAFH6rJrXjhMOb7Mb5CVKyDjsiguDIEpG6kv+I22MArKED/
         z+4WZDJF21bJ/sxuzqyDXajCa+ra5Aa4i3Ew6iePgM/KEE0/rCD9j1dDqo6Gm/bxW3F6
         wygw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zXtXviYSAQQSFGaAXKtraiM1DbAl8211fWRsnhCKb6RAQvgwM
	174pwOTZ7gTmcwZ4oYvgOsI=
X-Google-Smtp-Source: ABdhPJzgABL3uJDnWA3bDqL9BXfG9jr/moteDjFDN0gEAzpXipd8B38rsX5vqaxLlupAn3hyBOWtyQ==
X-Received: by 2002:a05:6a00:2493:b029:2c4:b6dd:d389 with SMTP id c19-20020a056a002493b02902c4b6ddd389mr2495158pfv.2.1621300128697;
        Mon, 17 May 2021 18:08:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls10141232plb.11.gmail; Mon, 17
 May 2021 18:08:48 -0700 (PDT)
X-Received: by 2002:a17:902:ecc4:b029:ef:8e98:3cb0 with SMTP id a4-20020a170902ecc4b02900ef8e983cb0mr1553929plh.50.1621300127927;
        Mon, 17 May 2021 18:08:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621300127; cv=none;
        d=google.com; s=arc-20160816;
        b=sAZjYbHsxICQRugzJAHCk1MazkAZS/x3V5Uxn6ke2YPxRBG4724xOtU3B64iK3W8rM
         t4/lc7+9OxxFI7wvYFS7RSC6hjme8yev5s4nwUS9LlDCHI8LG8LTs77MqcJ/DI+TgsXf
         KxsBBILsvBhwt+bFE8ZeaoOYChYjIOpTtyWAlW38GetxuOe53j8YZjcnsxFfIGGAbzfT
         wCL4wcPjTuG5CF4U5I4ghkJ40clODcLF9gDFKdGoFhkWP1U+i22bSdHYMxS24Pda+u4b
         57pcpDCC9yx4XeTDv+nBa6v3nhVfUq5AlQjcV8BbSCb3aTuI6hwEARvcGeneQQ4cwa6/
         mxlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KVUgv/uymQ1vIC/+PtPlKSiTgJvyydc7qWLE1uCsrzw=;
        b=gNhJp0rYjxTQ9f+6v8Go37zc54KHl2/YnufF/VBZzgoKR+kJzL4TaKaXFnC+d8DQfE
         lOO14RoDb35xKR0yK0qJ3Ixwx2rZ+x0TgLtfyLmT2G0XfZHb8TQ1LLCzZihlkgciS3Dz
         KEOqi+MPZQNrUXKXo24wfK8bcMJnLgq3pfnlhntsj2SFsWKD/BC0zivR7/EWqaDiB4jD
         zO9wr/K6TREgayxUdN32Mm0Rse+LO5Xk8fCDPIs+/gROIX+aw4s6I3qr3q7GIW775sKJ
         r2IXDpx4FCEVzcseK6cSP0o0XLukvruPnmo9T7mtNKmzSI80ljanmVTy4Ad26Lb5FsQY
         Y3Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NY9sxZlN;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id jf17si91701pjb.3.2021.05.17.18.08.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 18:08:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id g24so4606386pji.4
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 18:08:47 -0700 (PDT)
X-Received: by 2002:a17:902:7284:b029:ee:a57c:1dc9 with SMTP id
 d4-20020a1709027284b02900eea57c1dc9mr1551818pll.36.1621300127716; Mon, 17 May
 2021 18:08:47 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com>
 <e6ee5c21-a460-b4f7-9d0a-e2711ec16185@kernel.org> <CAKwvOd=4wux6NG_6tF6C_xjU0ps+Fh5hfW5a_0U+xcPgL+XJYg@mail.gmail.com>
 <20210518010407.GA83641@hyeyoo>
In-Reply-To: <20210518010407.GA83641@hyeyoo>
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Date: Tue, 18 May 2021 10:08:37 +0900
Message-ID: <CAB=+i9QeH1Q5QuproDi2pQPnEXTB+RWgTJ9xrk-b42aVqghHXg@mail.gmail.com>
Subject: Re: [next] x86_64 defconfig failed with clang-10
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>, Vlastimil Babka <vbabka@suse.cz>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: multipart/alternative; boundary="0000000000002fd75905c2905a96"
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NY9sxZlN;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000002fd75905c2905a96
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2021=EB=85=84 5=EC=9B=94 18=EC=9D=BC (=ED=99=94) =EC=98=A4=EC=A0=84 10:04, =
Hyeonggon Yoo <42.hyeyoo@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> I see no reason to add those lines. I removed them because kmalloc
> isn't written to support 64MB size, and it doesn't depend on clang
> version.
>

I mean, not kmalloc itself, but kmalloc_caches that kmalloc uses when size
is constant. It supports up to only 32MB.

>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAB%3D%2Bi9QeH1Q5QuproDi2pQPnEXTB%2BRWgTJ9xrk-b42aVqghHXg=
%40mail.gmail.com.

--0000000000002fd75905c2905a96
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">2021=EB=85=84 5=EC=9B=94 18=EC=9D=BC (=ED=99=94) =EC=98=A4=
=EC=A0=84 10:04, Hyeonggon Yoo &lt;<a href=3D"mailto:42.hyeyoo@gmail.com">4=
2.hyeyoo@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">
I see no reason to add those lines. I removed them because kmalloc<br>
isn&#39;t written to support 64MB size, and it doesn&#39;t depend on clang<=
br>
version.<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I mean, not kmalloc itself, but kmalloc_caches that kmalloc uses =
when size is constant. It supports up to only 32MB.</div><div dir=3D"auto">=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAB%3D%2Bi9QeH1Q5QuproDi2pQPnEXTB%2BRWgTJ9xrk-=
b42aVqghHXg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAB%3D%2Bi9QeH1Q5QuproDi2pQPn=
EXTB%2BRWgTJ9xrk-b42aVqghHXg%40mail.gmail.com</a>.<br />

--0000000000002fd75905c2905a96--
