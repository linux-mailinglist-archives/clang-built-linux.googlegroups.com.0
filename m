Return-Path: <clang-built-linux+bncBD5JHS4X5YBBB4EN5KCAMGQETAPKAPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 137DC37A798
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 15:30:26 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id w206-20020a1fadd70000b02901fb33a39f7asf700362vke.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 06:30:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620739825; cv=pass;
        d=google.com; s=arc-20160816;
        b=0sgjEmUw/+F0jZlfits5k8vaQGLwjT+nciNF5OvQuZXZd9kkeh54g/4hFkGfXDG/SG
         jP0U0ca7QS/xxFkeIC1OgMX2bzEs9xpRHJooS+sQdR79HxIdCTiX2zsHbPHrQhRwwGwf
         yML7LuKZ7Ju96d/6RWOj31fXT/6n77aNEt+8y4jqCKH/PTzhgPbuvR747WkZGY97dmot
         awEufEv3/K6CHVYeyY0MPfAIGooE+tBURIdn6NezpqvBNHUbCwrgjyUQGxneg55AHMOK
         KYr5QTMGuUGiCUarEl5SFAadPJFfSiyosbmz/xaejdfMq1HVIPeJcIzHHONs7uklr0Wp
         kLZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:sender
         :dkim-signature;
        bh=2VoItGAcXMxBeOHlJBGMMZ1Nb6lwF5khIrT93GjABEw=;
        b=wvQieI+gJ866/tmMyd/WAM31chVwGvzkPsHOi2/7jERhganIPJrnLufnertSFKicj1
         AVsgJ3OTTbMxpbv4tJLTO8D+OXLe5XQNTBzVw6qVbyHwEQezGzXnM8uSCwdA0WD8DlCz
         MA7NNnwE+gbfF0HDzYbb6IMmzOMcXYpkoGXAfLBJx2WHpUWQQws+ZPxu2z78bQQIHLzN
         2kKH5EXriS0JVtgbOT3DMg2VRjFRXwk4sm5cZ7WWXeNnufJNm/0ec59qop1yhDPTJX8P
         RU1bMlvNYMDs3kKWeci9v0qM7nWeI5mWRf4cgmQz7SpxXPgxvrMyoKhCT+4ZqLjznOeO
         8WnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=QG7HcZsq;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=aik@ozlabs.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references:user-agent
         :subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2VoItGAcXMxBeOHlJBGMMZ1Nb6lwF5khIrT93GjABEw=;
        b=ieLoitzj0FBXrrJoOrUSZ+BlMqMBtvotvpeV7kLjWjhYU7onxq5bpntqIvr8LxGFW+
         t1zetY608iruq5XSJfhwK3yWN2/PLgHc3ZazdQ724IWUdR4KyArXg7zV+wEhnwFAGTiY
         jSYAMyW+0HnKXp3JnkvgAjkK8ahekv187B81MlHs0Q0jNgELdmdWpwCttvhfWC0CwSwG
         kQPFY4eNOq5P6zQWV7Q4wIs0be1fcWZ8dzo/z6t7gpDzz4Op2ycCoD6NRzoWxFBwZdhL
         wyL/uB5Rddqb3PsRC22Uof++SSO3TjIo3g3EJiLgxWbh2L5YBaw+1UdbcyA2GjnjSl0u
         v72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:user-agent:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2VoItGAcXMxBeOHlJBGMMZ1Nb6lwF5khIrT93GjABEw=;
        b=lFTAz+xerLuHyUlf5pg0W2w+GzxW3HekrajeIRaXbJg1M5K4XMUs9F0Hj1TKsZ9jrZ
         eKZCtNrM5LSDMRtHmxpw0y7U2+bqL9n7Bl2g+/h4JY9YOeV5TyUsIEJn1XLaBKd++pnN
         +hNbEhyxd6vRC7i6F+afTAFGKukJUemsDwXNzYPbpPkXLbzAgbmDl0KTHTMnNxLsUJRz
         BsUFx/hGIYlINJPARVKNHoKPcs4ag0kMU/HLC2g5elyBo6CjyNVQNi0wWOYOPiVSgpdZ
         jbgiH/8tCWpZItoAyewQq2by7faDUTL90DGykzWeabEDnFL8PS5GD041yJwf45awXK4Z
         EbiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JUi+83oyzSFFBhPdTt0RBt8IM7uTWA9Dz2X4kdaOTC0yiLI5T
	uRR1VHcp2GXnjZN/EbjJ9cs=
X-Google-Smtp-Source: ABdhPJyGixsZOFaKhI9sp2GuyEPoqnQr/al4fZYphJ2bUqROvu1BtxSpepNDzzZSpMev4vv2VxUZHw==
X-Received: by 2002:a67:fe02:: with SMTP id l2mr25286424vsr.8.1620739825012;
        Tue, 11 May 2021 06:30:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2f12:: with SMTP id x18ls1940803uaj.3.gmail; Tue, 11 May
 2021 06:30:24 -0700 (PDT)
X-Received: by 2002:ab0:4d4b:: with SMTP id k11mr25450845uag.92.1620739824495;
        Tue, 11 May 2021 06:30:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620739824; cv=none;
        d=google.com; s=arc-20160816;
        b=0qrFECphbpiPqEKTuPNciAGP7jF3oPSBwiePgZDlE6ZzwKmZcmnjri+6afgEO5sfBp
         +7mdyBbWRdfR5n/7dknl/GCjPuuupqKZUDaM3QJH2pLz1kcw3pXav7+V5qcaeKL+ywth
         Gko+wPu6PA1nnNNzjbOQHN/u4IRC3NiSf6W57cht0FcGBKoxOBTff8TzPjspuu+5WhUG
         VOjLxqnUI6zLy4vCkn1UOmfqClMZCEGa2aHq3oYRYSv4P/5HIdvv/IWa9eY0A6pjBAJp
         hIw4QpWcC0PplKGPubnPH+Odt0u9HGC5Vq6BfwNX38DnV6ga0egBq6yCSXjch+VbMv/L
         WMZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:user-agent:references:in-reply-to:message-id
         :date:cc:to:from:dkim-signature;
        bh=TMkyCU3xEE//swwTt+8ovMpUkBNd5F1bX6i4khQ7i/4=;
        b=Hl1K05JAGvZjFVDOkXVeMupasMYNo0ISJgt/jvD5m1iMp3LGDKEvZ7mjR0+bo9R/eN
         ua1NV+r7/3wHwGVh/GoIXJT3T0dMQ9DiCsyk8IX9hkvxw7yN1m3RaY34TPt2ciog/cM4
         FVJ4FQ6CkGHsGaJMS71KscZGozFnA55bdFDg5DobyKLR/4wnTRIvmmqC1pWiFn0c7K6G
         z7APHjHA8ElNYE5hPzBT0RrLD9vBh2luzDNkRxA5VqKMSxyGtDns+OqvUI5963dONOU5
         T2PWT0DAfZsT2/fVnNODW2gYg8Wuq9gum4db1IADEfHxjDIoi8GzXxooDY+J8zcUAzE3
         0DQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=QG7HcZsq;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=aik@ozlabs.ru
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id u15si1268094vsi.0.2021.05.11.06.30.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 06:30:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id lj11-20020a17090b344bb029015bc3073608so1355700pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 06:30:23 -0700 (PDT)
X-Received: by 2002:a17:90a:4b0e:: with SMTP id g14mr5055331pjh.48.1620739823420;
        Tue, 11 May 2021 06:30:23 -0700 (PDT)
Received: from [192.168.10.95] (ppp121-45-194-51.cbr-trn-nor-bras38.tpg.internode.on.net. [121.45.194.51])
        by smtp.gmail.com with ESMTPSA id ms2sm14027460pjb.8.2021.05.11.06.30.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 06:30:22 -0700 (PDT)
From: Alexey Kardashevskiy <aik@ozlabs.ru>
To: Segher Boessenkool <segher@kernel.crashing.org>
CC: Michal Marek <michal.lkml@markovi.net>, <linux-kbuild@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, <linux-kernel@vger.kernel.org>, Nicholas Piggin <npiggin@gmail.com>, Nathan Chancellor <nathan@kernel.org>, <clang-built-linux@googlegroups.com>, <linuxppc-dev@lists.ozlabs.org>
Date: Tue, 11 May 2021 23:30:17 +1000
Message-ID: <1795b9efa40.27bb.1ca38dd7e845b990cd13d431eb58563d@ozlabs.ru>
In-Reply-To: <20210511112019.GK10366@gate.crashing.org>
References: <20210511044812.267965-1-aik@ozlabs.ru>
 <20210511112019.GK10366@gate.crashing.org>
User-Agent: AquaMail/1.27.0-1705 (build: 102700004)
Subject: Re: [PATCH kernel v2] powerpc/makefile: Do not redefine $(CPP) for preprocessor
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="----------1795b9efe921a4027bb955e6ea"
X-Original-Sender: aik@ozlabs.ru
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623
 header.b=QG7HcZsq;       spf=pass (google.com: domain of aik@ozlabs.ru
 designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=aik@ozlabs.ru
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

This is a multi-part message in MIME format.
------------1795b9efe921a4027bb955e6ea
Content-Type: text/plain; format=flowed; charset="UTF-8"



On 11 May 2021 21:24:55 Segher Boessenkool <segher@kernel.crashing.org> wrote:

> Hi!
>
> On Tue, May 11, 2021 at 02:48:12PM +1000, Alexey Kardashevskiy wrote:
>> --- a/arch/powerpc/kernel/vdso32/Makefile
>> +++ b/arch/powerpc/kernel/vdso32/Makefile
>> @@ -44,7 +44,7 @@ asflags-y := -D__VDSO32__ -s
>>
>> obj-y += vdso32_wrapper.o
>> targets += vdso32.lds
>> -CPPFLAGS_vdso32.lds += -P -C -Upowerpc
>> +CPPFLAGS_vdso32.lds += -C
>>
>> # link rule for the .so file, .lds has to be first
>> $(obj)/vdso32.so.dbg: $(src)/vdso32.lds $(obj-vdso32) 
>> $(obj)/vgettimeofday.o FORCE
>
>> --- a/arch/powerpc/kernel/vdso64/Makefile
>> +++ b/arch/powerpc/kernel/vdso64/Makefile
>> @@ -30,7 +30,7 @@ ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
>> asflags-y := -D__VDSO64__ -s
>>
>> targets += vdso64.lds
>> -CPPFLAGS_vdso64.lds += -P -C -U$(ARCH)
>> +CPPFLAGS_vdso64.lds += -C
>>
>> # link rule for the .so file, .lds has to be first
>> $(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) 
>> $(obj)/vgettimeofday.o FORCE
>
> Why are you removing -P and -Upowerpc here?  "powerpc" is a predefined
> macro on powerpc-linux (no underscores or anything, just the bareword).
> This is historical, like "unix" and "linux".  If you use the C
> preprocessor for things that are not C code (like the kernel does here)
> you need to undefine these macros, if anything in the files you run
> through the preprocessor contains those words, or funny / strange / bad
> things will happen.  Presumably at some time in the past it did contain
> "powerpc" somewhere.
>
> -P is to inhibit line number output.  Whatever consumes the
> preprocessor output will have to handle line directives if you remove
> this flag.  Did you check if this will work for everything that uses
> $(CPP)?

i don't know about everything for sure but i checked few configs and in all 
cases (except vdso) $CPP was receiving cflags.

>
> In any case, please mention the reasoning (and the fact that you are
> removing these flags!) in the commit message.  Thanks!


but i did mention this, the last paragraph... they are duplicated.

>
>
> Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1795b9efa40.27bb.1ca38dd7e845b990cd13d431eb58563d%40ozlabs.ru.

------------1795b9efe921a4027bb955e6ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto">
<div dir=3D"auto"><br></div><div dir=3D"auto"><br></div>
<div id=3D"aqm-original" style=3D"color: black;">
<div dir=3D"auto">On 11 May 2021 21:24:55 Segher Boessenkool &lt;segher@ker=
nel.crashing.org&gt; wrote:</div>
<div><br></div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"auto">Hi!</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">On Tue, May 11, 2021 at 02:48:12PM +1000, Alexey Kardashe=
vskiy wrote:</div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #0099CC; padding-left: 0.75ex;">
<div dir=3D"auto">--- a/arch/powerpc/kernel/vdso32/Makefile</div>
<div dir=3D"auto">+++ b/arch/powerpc/kernel/vdso32/Makefile</div>
<div dir=3D"auto">@@ -44,7 +44,7 @@ asflags-y :=3D -D__VDSO32__ -s</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">obj-y +=3D vdso32_wrapper.o</div>
<div dir=3D"auto">targets +=3D vdso32.lds</div>
<div dir=3D"auto">-CPPFLAGS_vdso32.lds +=3D -P -C -Upowerpc</div>
<div dir=3D"auto">+CPPFLAGS_vdso32.lds +=3D -C</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto"># link rule for the .so file, .lds has to be first</div>
<div dir=3D"auto">$(obj)/vdso32.so.dbg: $(src)/vdso32.lds $(obj-vdso32) $(o=
bj)/vgettimeofday.o FORCE</div>
</blockquote>
<div dir=3D"auto"><br></div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #0099CC; padding-left: 0.75ex;">
<div dir=3D"auto">--- a/arch/powerpc/kernel/vdso64/Makefile</div>
<div dir=3D"auto">+++ b/arch/powerpc/kernel/vdso64/Makefile</div>
<div dir=3D"auto">@@ -30,7 +30,7 @@ ccflags-y :=3D -shared -fno-common -fno=
-builtin -nostdlib \</div>
<div dir=3D"auto">asflags-y :=3D -D__VDSO64__ -s</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">targets +=3D vdso64.lds</div>
<div dir=3D"auto">-CPPFLAGS_vdso64.lds +=3D -P -C -U$(ARCH)</div>
<div dir=3D"auto">+CPPFLAGS_vdso64.lds +=3D -C</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto"># link rule for the .so file, .lds has to be first</div>
<div dir=3D"auto">$(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) $(o=
bj)/vgettimeofday.o FORCE</div>
</blockquote>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">Why are you removing -P and -Upowerpc here? &nbsp;"powerp=
c" is a predefined</div>
<div dir=3D"auto">macro on powerpc-linux (no underscores or anything, just =
the bareword).</div>
<div dir=3D"auto">This is historical, like "unix" and "linux". &nbsp;If you=
 use the C</div>
<div dir=3D"auto">preprocessor for things that are not C code (like the ker=
nel does here)</div>
<div dir=3D"auto">you need to undefine these macros, if anything in the fil=
es you run</div>
<div dir=3D"auto">through the preprocessor contains those words, or funny /=
 strange / bad</div>
<div dir=3D"auto">things will happen. &nbsp;Presumably at some time in the =
past it did contain</div>
<div dir=3D"auto">"powerpc" somewhere.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">-P is to inhibit line number output. &nbsp;Whatever consu=
mes the</div>
<div dir=3D"auto">preprocessor output will have to handle line directives i=
f you remove</div>
<div dir=3D"auto">this flag. &nbsp;Did you check if this will work for ever=
ything that uses</div>
<div dir=3D"auto">$(CPP)?</div></blockquote></div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">i don't know about everything for sure but i checked f=
ew configs and in all cases (except vdso) $CPP was receiving cflags.</div><=
div dir=3D"auto"><br></div><div id=3D"aqm-original" style=3D"color: black;"=
 dir=3D"auto"><blockquote type=3D"cite" class=3D"gmail_quote" style=3D"marg=
in: 0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;"><d=
iv dir=3D"auto"></div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">In any case, please mention the reasoning (and the fact t=
hat you are</div>
<div dir=3D"auto">removing these flags!) in the commit message. &nbsp;Thank=
s!</div></blockquote></div><div dir=3D"auto"><br></div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">but i did mention this, the last paragraph... the=
y are duplicated.</div><div dir=3D"auto"><br></div><div id=3D"aqm-original"=
 style=3D"color: black;" dir=3D"auto"><blockquote type=3D"cite" class=3D"gm=
ail_quote" style=3D"margin: 0 0 0 0.75ex; border-left: 1px solid #808080; p=
adding-left: 0.75ex;"><div dir=3D"auto"></div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">Segher</div>
</blockquote>
</div><div dir=3D"auto"><br></div>
</div></body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/1795b9efa40.27bb.1ca38dd7e845b990cd13d431eb585=
63d%40ozlabs.ru?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/1795b9efa40.27bb.1ca38dd7e845b990cd13d431e=
b58563d%40ozlabs.ru</a>.<br />

------------1795b9efe921a4027bb955e6ea--

