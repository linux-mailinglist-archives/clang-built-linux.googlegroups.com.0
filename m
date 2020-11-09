Return-Path: <clang-built-linux+bncBDQ2R56ST4HRB5UKU76QKGQEUBPSZ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 156972AC8BC
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 23:40:56 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id q5sf7753540ilc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 14:40:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604961655; cv=pass;
        d=google.com; s=arc-20160816;
        b=R/DsHKwhv/t7MLbfZg0acINHEVN+ssH/E7izu3CBF3exI9Aehp6zZGkN5W7AvLZ4yz
         oScusUmsvBSkJBj9daICZUtEnYMWuljEcfXx7qVCoe9+Bn7OkAdtv0bkx83ot//dhS7H
         P8J+vLjQtr+wuRJx2HDuP9MKHkRnusIeZxoDi+PtulXh+clJdK6QfZYEnYwqZhY8bpKW
         zdr3OL5nDN3WwlE9UWEZMwHN18DRi+iZus4YXFZbYClgh/xhiYeFk5uC3xaxjs9uACPA
         /i2UPj811WueRT5UpsKX165tu7+/uN9WTb5z+MXCdNrzgrYWCsGi1lY5rFPSMF8aftb0
         FP1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=S6rSWZQzYeurbxjRVQh6WzYVyj++kOcxKOC7hPvu8k4=;
        b=h6gigj+VNHpN60tlsHwqgsX8xmIRe8iE2TpCwG9NFTZvE+bJu2DQmI166QSr/KxK2P
         QLtzESs0qtuKL3TJqi88tvDIK6s6GtYgQz8w+1oPNBY1iEHwJuZCtmeNtpwQFI7/IW4A
         IsE6xux2Si4+e0j9AZtxaioxmw8cCprI3yXTtLyTF0KUzPOyqETNMHJpbBpPWkAQUXO0
         p3LH+7DPMuk44kPxbcLWnOUihbxsA8gfhrgpwpu37+8XAYFJtji2XtsUTvMBXzgtc4JP
         hydrM6IqcXcdi4HYhRV/XBMijOhXAXENZ5T8AQkgh6UHwldMbGu92unESojQzxWdFk03
         IFwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bOy9lNL7;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S6rSWZQzYeurbxjRVQh6WzYVyj++kOcxKOC7hPvu8k4=;
        b=jqwyvNrPvep0FbKeie6KWPgWKJt/YvYA5mL69g9nt8DOh634gV1UK9glrQ9A86l0eV
         /RW05vX98KXgjRgy04G8jdjHPsqozuvTfVY5K10+pPL+jNeboPUodk6w5aA09zX61nzj
         i80fUmDAUyokheDXVS8vmfXY1jxxNiIbuF/viiJotwsQm/Wtv+aE56AuDJ+CB0gy0ZFp
         +KrcUtfPIHxQT+FtmyWvUjc9kEf4IyeopAv/x6rTCATlq3NXTj8VanzLsldN2S9lIfD3
         IbCjlDlz/GH3pu2/+/yV9tKJeCGW1m1l2/yfp7Qo8XtuoKehZUztcixi4+6SNyNj2MkR
         ovdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S6rSWZQzYeurbxjRVQh6WzYVyj++kOcxKOC7hPvu8k4=;
        b=hHMzhUBAAqD3HmRcFc+IcU/AczbtidGvqdX5HDq/6VGu5ZqvmlQZqgkMytODJxgKSY
         lP+nmLjqFNnrxq/598XKK4I6nb4NKXPiab4fdfLHvm76vvTxNuntbo0S8VW7cnC6VqPF
         0L0iuGhuxHiF7yDpxm4kL9Cn9yhD6OL9NQrCL3ZRv7MDEmF2T9SfkXu/zu4NjvYL5BAT
         EAtfbD1JQ0YsrrNhMuNffgkrPTvaf1n0LprsKc2hAu5+Hg3bOuvdEwPvXya76aCouo1d
         CUnggEHbKE9IyGd2RPmw9QAnMdwNadbB+/X7MbIMi1GEzGY4fPWJyDmcgDe6a6Hm2sft
         6Wjg==
X-Gm-Message-State: AOAM530GDdf1/JsdjIDNeiiNBvIaNpIq49YmfDwL5v/gSTFuFzfJLhsk
	CQa7vHNKRTyHVxfxNi0vAH4=
X-Google-Smtp-Source: ABdhPJwwTTAVci2FvZSypF3OrcARbyI1HQ3QPSvhgrmYpnJuwA21kStCXVgMtEUM0Iq0B0ztYAlO1A==
X-Received: by 2002:a92:d446:: with SMTP id r6mr8206178ilm.267.1604961655046;
        Mon, 09 Nov 2020 14:40:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls683644jaj.0.gmail; Mon, 09
 Nov 2020 14:40:54 -0800 (PST)
X-Received: by 2002:a02:3f59:: with SMTP id c25mr13127407jaf.17.1604961654617;
        Mon, 09 Nov 2020 14:40:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604961654; cv=none;
        d=google.com; s=arc-20160816;
        b=udGwiwizRPG0hKBa7o3oi6AZGbX7OlVXCs2K1Mzszjov0iHLm5Rd76j4w+aZvIr+pZ
         RfKXcOE4cbDPmK1rVxhWxvZFOal06IhkQuP7297S+kmdznVU2PO2I71wBeNovnywUpMk
         73CZyk24ny6zN5/ugzgyQYp6Q6WVlznoqsyOiB8z7h/hFnYhOZU3LzU31Kr1CpZWsBsV
         nxQRm218icRSif0WSfvu7XsZHxg+xJ9wl5vO/VbBkQe4dW2hdDrTH2vlceNcccVq2Gqb
         FCGMENb8k3cx/9nwR1TZPMVtszFKgwWLrGVVAQLs1YlrywaiwaK1H8Via9zbqaviVNOJ
         ICJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fCYmyzTV0hNURwysa/N+a5x2hRkjURPKw7UUSD+JOZg=;
        b=QmH0waCj682YiPzsvUl10w0fHUZX3mPm7Fftf0/S5yJAdbGV7inr8FlfWzcJrGcBRQ
         UrtNcpktlx9z5OfVV/ib2HHil6XKvsYXDnTo9ukOhExjy3vkxOaaBWEoAnu6tRpUpnCO
         RkmUY83wc3JIPFlVbwLfUUqmXmNmzfTHwZMSMvwmvZ5kqEyBOWwCOOkocotwODs/izCm
         eop0doCg24HUtIq9HiHyoq8IrNWjam498RBMK6TGpzQ9YVBvE1JupsTVYoDMbGZTjiOI
         UJQS7LJ6jD/Q5+BpZc7d2CZgINgqrQu2bQpkp96F5PtdOC9aWcNm9vyRBlGhEoU0ZpWJ
         GxcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bOy9lNL7;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o19si660487ilt.2.2020.11.09.14.40.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 14:40:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id g7so9553297pfc.2
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 14:40:54 -0800 (PST)
X-Received: by 2002:a17:90a:4606:: with SMTP id w6mr1435589pjg.15.1604961653869;
 Mon, 09 Nov 2020 14:40:53 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=9iqLgdtAWe2h-9n=KUWm_rjCCJJYeop8PS6F+AA0VtA@mail.gmail.com>
 <20201109183528.1391885-1-ndesaulniers@google.com> <CA+SOCLKc6avnZnLA9uQT=JZ6AOe-37AEKeYfb7VA7xvuXNhv_Q@mail.gmail.com>
In-Reply-To: <CA+SOCLKc6avnZnLA9uQT=JZ6AOe-37AEKeYfb7VA7xvuXNhv_Q@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 14:40:42 -0800
Message-ID: <CA+SOCLJYASoRDHhod+ctKW-wLBJOJ7WN--mOC7suSR3GwDzBNA@mail.gmail.com>
Subject: Re: [PATCH v3] Kbuild: do not emit debug info for assembly with LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000422b7205b3b441a1"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bOy9lNL7;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--000000000000422b7205b3b441a1
Content-Type: text/plain; charset="UTF-8"

Tested-by: Jian Cai <jiancai@google.com> # Compile-tested on mainline (with
defconfig) and ChromeOS (with olddefconfig).

On Mon, Nov 9, 2020 at 2:32 PM Jian Cai <jiancai@google.com> wrote:

> Thanks for the patch! Compile-tested on mainline (with defconfig) and
> ChromeOS kernel 5.4 (with olddefconfig) and both worked.
>
> On Mon, Nov 9, 2020 at 10:35 AM 'Nick Desaulniers' via Clang Built Linux <
> clang-built-linux@googlegroups.com> wrote:
>
>> Clang's integrated assembler produces the warning for assembly files:
>>
>> warning: DWARF2 only supports one section per compilation unit
>>
>> If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for
>> assembly sources (it is still emitted for C sources).  This will be
>> re-enabled for newer DWARF versions in a follow up patch.
>>
>> Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
>> LLVM=1 LLVM_IAS=1 for x86_64 and arm64.
>>
>> Cc: <stable@vger.kernel.org>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/716
>> Reported-by: Dmitry Golovin <dima@golovin.in>
>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> Suggested-by: Dmitry Golovin <dima@golovin.in>
>> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
>> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
>> Reviewed-by: Fangrui Song <maskray@google.com>
>> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> ---
>>  Makefile | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Makefile b/Makefile
>> index f353886dbf44..7e899d356902 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -826,7 +826,9 @@ else
>>  DEBUG_CFLAGS   += -g
>>  endif
>>
>> +ifneq ($(LLVM_IAS),1)
>>  KBUILD_AFLAGS  += -Wa,-gdwarf-2
>> +endif
>>
>>  ifdef CONFIG_DEBUG_INFO_DWARF4
>>  DEBUG_CFLAGS   += -gdwarf-4
>> --
>> 2.29.2.222.g5d2a92d10f8-goog
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit
>> https://groups.google.com/d/msgid/clang-built-linux/20201109183528.1391885-1-ndesaulniers%40google.com
>> .
>>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJYASoRDHhod%2BctKW-wLBJOJ7WN--mOC7suSR3GwDzBNA%40mail.gmail.com.

--000000000000422b7205b3b441a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Tested-by: Jian Cai &lt;<a href=3D"mailto:jiancai@goo=
gle.com" target=3D"_blank">jiancai@google.com</a>&gt; # Compile-tested on m=
ainline (with defconfig) and ChromeOS (with olddefconfig).<br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Nov 9, 2020 at 2:32 PM Jian Cai &lt;<a href=3D"mailto:jiancai@google.com" =
target=3D"_blank">jiancai@google.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks for the patch! =
Compile-tested on mainline (with defconfig) and ChromeOS kernel 5.4 (with o=
lddefconfig) and both worked.=C2=A0</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 9, 2020 at 10:35 AM &#39;Nic=
k Desaulniers&#39; via Clang Built Linux &lt;<a href=3D"mailto:clang-built-=
linux@googlegroups.com" target=3D"_blank">clang-built-linux@googlegroups.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Clang&#39;s integrated assembler produces the warning for assembly files:<=
br>
<br>
warning: DWARF2 only supports one section per compilation unit<br>
<br>
If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for<br>
assembly sources (it is still emitted for C sources).=C2=A0 This will be<br=
>
re-enabled for newer DWARF versions in a follow up patch.<br>
<br>
Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with<br>
LLVM=3D1 LLVM_IAS=3D1 for x86_64 and arm64.<br>
<br>
Cc: &lt;<a href=3D"mailto:stable@vger.kernel.org" target=3D"_blank">stable@=
vger.kernel.org</a>&gt;<br>
Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/716" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/linux/=
issues/716</a><br>
Reported-by: Dmitry Golovin &lt;<a href=3D"mailto:dima@golovin.in" target=
=3D"_blank">dima@golovin.in</a>&gt;<br>
Reported-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.c=
om" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
Suggested-by: Dmitry Golovin &lt;<a href=3D"mailto:dima@golovin.in" target=
=3D"_blank">dima@golovin.in</a>&gt;<br>
Suggested-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.=
com" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
Suggested-by: Sedat Dilek &lt;<a href=3D"mailto:sedat.dilek@gmail.com" targ=
et=3D"_blank">sedat.dilek@gmail.com</a>&gt;<br>
Reviewed-by: Fangrui Song &lt;<a href=3D"mailto:maskray@google.com" target=
=3D"_blank">maskray@google.com</a>&gt;<br>
Reviewed-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.c=
om" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
Signed-off-by: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.c=
om" target=3D"_blank">ndesaulniers@google.com</a>&gt;<br>
---<br>
=C2=A0Makefile | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/Makefile b/Makefile<br>
index f353886dbf44..7e899d356902 100644<br>
--- a/Makefile<br>
+++ b/Makefile<br>
@@ -826,7 +826,9 @@ else<br>
=C2=A0DEBUG_CFLAGS=C2=A0 =C2=A0+=3D -g<br>
=C2=A0endif<br>
<br>
+ifneq ($(LLVM_IAS),1)<br>
=C2=A0KBUILD_AFLAGS=C2=A0 +=3D -Wa,-gdwarf-2<br>
+endif<br>
<br>
=C2=A0ifdef CONFIG_DEBUG_INFO_DWARF4<br>
=C2=A0DEBUG_CFLAGS=C2=A0 =C2=A0+=3D -gdwarf-4<br>
-- <br>
2.29.2.222.g5d2a92d10f8-goog<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/20201109183528.1391885-1-ndesaulniers%40google=
.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgi=
d/clang-built-linux/20201109183528.1391885-1-ndesaulniers%40google.com</a>.=
<br>
</blockquote></div>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLJYASoRDHhod%2BctKW-wLBJOJ7WN--mOC7suS=
R3GwDzBNA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJYASoRDHhod%2BctKW-wLB=
JOJ7WN--mOC7suSR3GwDzBNA%40mail.gmail.com</a>.<br />

--000000000000422b7205b3b441a1--
