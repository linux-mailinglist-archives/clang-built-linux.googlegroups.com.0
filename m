Return-Path: <clang-built-linux+bncBDPPFIEASMFBBFXOZL6QKGQELCV7YOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 269AC2B4CD2
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 18:29:59 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id c65sf5697672lfg.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 09:29:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605547798; cv=pass;
        d=google.com; s=arc-20160816;
        b=sgXyBnve2RyfCpkx/76PX9qIn8oqzC7Tb/aU+OKDJLrBaeFR8jC9SgNU1Xp1ZGRCMD
         Rr0e2OUKUzNWCjVwYRWcffKGgM+MVAkwoyPdBawhPjbEpL7/hNmMXnoT4+NY62w9+B/D
         NOSoDybtA9NJTBohOIekkuu7C/0MJuSlByWpioBb5J/oGtbK1T3v2nagfA+HE3HVWe73
         U4Msgfq2xIqGR8iHjDutYI3yTAznVhaqoJm2t7pLT1wd+Hv/HH6Wh6a48xa5Z2JXJugC
         4JRKIn8+oyUt+C4DhzLEjd7iDMi/tNMyhbXX5+wgZMargW53osMUabOaIS3P4G88bY2a
         CbgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IONb3SmJyAKf5wJcvS1DnMaILUNW78x5cFa2vE0wVo8=;
        b=nqJy/wUFTqJl75XZhl9xPKZdjQ8o59M6TgCOEE+yhNpLj3F+q/u5dMyS2xiZ2ht3h+
         rri4Akiv/eOFnRTQNf68vMcV2l89IaKgsuF0xk0NFQq5lW+9y2y1jhPxb7RE5GdwIk+G
         ArQffHYNkS6fzQF985afP7uysIk53gwCdtix9yiz7dBKOf2AiTKyNlwLeWuh4lZY3E1r
         HrD9klIGo5z8xo+fuzy1dHSp9kniCQ8x80U/eQQUKLrvZHy2p/YqiL+ApUh5DcTED9xY
         FN8mLykQIMFwB0r/lRmgMr28pBLzKsnL1RAD3WRRsGUGzoHhsqblNqg+fNAkAwRqIpPl
         Fa2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ur9EHk1i;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IONb3SmJyAKf5wJcvS1DnMaILUNW78x5cFa2vE0wVo8=;
        b=NcUKq/sjJxywAXUBHfL+dcl1inW+MPJi45yF24JbYH3jVnZ7KWMO3Fqjsg6eoHXvcE
         1LX4i3CdL8wQ1S/NElTxVj3KDeEkIIM86Cn5QR3me8HevCQUH3V90vxHOxjj+xfCe4qD
         L922CFTLgtvfPpWkLqTB1mMtmzZ0e6C/Ay86K7HeWPxcKfzoUEIpZyVBC5Gtnx6Ks0Bt
         dgeiOO4kkQjfqLzRlJt7y2pTN7mRDe0oYaMXyyOcYFXMy1q30Tk91NnbxzlkKiaJR+9y
         r1trWgQFl8VWUsR4WfhqLKBfm7cq3K5l5Td212rMxa/wGhyDMI3zNYi9oVU97smaxX9f
         z0NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IONb3SmJyAKf5wJcvS1DnMaILUNW78x5cFa2vE0wVo8=;
        b=Ih87yEIR+TWPz4HZccSd37n7qA+URLNJbkAPPh6F6KME56qANqN05p3zdCHRiW252x
         UrfX2DQ/S/C/uAZAHMlp5SJusyxdGV1yrYnbCbs7rIm2V0xstjUAo3eX0Nqc/uzW/bKe
         X6v9kAoYwOC9+VHPcqdC7dWh2MBW7o5D4HTgeTEQomo55DH368hTOQgvmN5VZwBp8puI
         v7VWpqBQP4uh0tBw+ul9Oa2LSgC6/RKHtDrUD25Frx3s3I6q/AZgs067swALtC+tIhKA
         bff7QFER0pza8RyOGb81ZRZM2M64g4FVnzYtK3MSdxn407b9sN3KgcaBX6H2O6uQC6PG
         PXRg==
X-Gm-Message-State: AOAM532O/kmnlgVkQIBVppQOuClUH/duKGeqh1Ac/eJqqi7GjjxF8Cey
	a61roS4/0uN0rDhWYG2WOBI=
X-Google-Smtp-Source: ABdhPJzDRiSiWRUCsvFSt7wZumoJ1BOHfG3vjTGumcSsomcf7CmLgJqPFu5t+L6O8gI0/L27+G0ylQ==
X-Received: by 2002:ac2:5141:: with SMTP id q1mr176470lfd.157.1605547798690;
        Mon, 16 Nov 2020 09:29:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480e:: with SMTP id v14ls8148710lfa.2.gmail; Mon, 16 Nov
 2020 09:29:57 -0800 (PST)
X-Received: by 2002:a19:83c2:: with SMTP id f185mr154177lfd.115.1605547797501;
        Mon, 16 Nov 2020 09:29:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605547797; cv=none;
        d=google.com; s=arc-20160816;
        b=YSRnxsQR4ri4hfHcDGTXtWSi+oW+mjeDVB3TcBiDo4eTnyIoYDhyly18r30iicvGDm
         KmaH5w5KzyPr2OZ5jareaCZkTrgGY5E23xrp5cXomLmqO0Y2b74rix+pEFcuT5zNhkuZ
         JMPohLsbuRfUNLj0Mw46KCXleQjh9f1M12/im7daYjKylVTyu/+lrc9i3+HTf1Nlnubt
         6OUyr5GiY51HsP9mX9GCHbzgIuWaLyok0W/FVK/HxR8WiTVEWMBYASOHuZgtW3BX4Rbd
         X3AJ4aAcmb/lzdqbc15jI9t75F1bpZeE0yLIAPEDvcwO6phJogf7OpyNlffoIkWDnEei
         KuIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5Ahf37Wag7ZlRxroyLNfUK/2d5YPu3vk+XTTETF5LPQ=;
        b=OGmaY17B58J78rhsjC9YZxfeAbR/blkbrZgu5PDn/xEr633owqxFuCbhwuHOD6svkj
         5eOpAoOLfhAulo161CLsnuvvu0Ag3UcEc+PFg+5/xE1cUpSaVLk6igOkAViJbleS9AuC
         C94hWNO66xqP3DaHN3vSebmUJFFC+q4HJ+uBwci0TDjKkgeU5hBxCzd0Id2CofT/F7s5
         RQm3mZ0dDFwmIhr+yHmNUK2PpsGJHr68BK2LjVlvLlNezGJjjtaNdds2e/vHukICqtn+
         hN8sXLlnG2FiYcAu7ZgBKiLSKe9juggKUp2I1rsdZzgOlC8yxPQrhYeJQSGVw3J7An1m
         aNLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ur9EHk1i;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h19si722194ljh.7.2020.11.16.09.29.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 09:29:57 -0800 (PST)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id p1so19571991wrf.12
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 09:29:57 -0800 (PST)
X-Received: by 2002:adf:9124:: with SMTP id j33mr19783075wrj.376.1605547796907;
 Mon, 16 Nov 2020 09:29:56 -0800 (PST)
MIME-Version: 1.0
References: <20201114000803.909530-1-irogers@google.com> <CANiq72m=OK2bF2Nc-ht=ibNa2m6RcBCjFuhrv9kyoxE6yaMqVA@mail.gmail.com>
 <CAP-5=fV0xe-8GEbnrh8Y4C8nWK2E2mGo1iiNpRCs+590VwJVEA@mail.gmail.com>
 <CANiq72kV-hcmf17_rzywuKXe5U0kwCOb52SihwZHUK0z0AsECA@mail.gmail.com>
 <CAP-5=fU1RM-O4=OGGLkn2+jF4B=m+yhwqo3hE2EHSWRxQnGBOg@mail.gmail.com> <CANiq72=MYsucFkCtBZMN1VGVpRtMAwV2TpTvwXgeckwwa_7T=g@mail.gmail.com>
In-Reply-To: <CANiq72=MYsucFkCtBZMN1VGVpRtMAwV2TpTvwXgeckwwa_7T=g@mail.gmail.com>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Nov 2020 09:29:44 -0800
Message-ID: <CAP-5=fWiHDnfaeUUTph--JXOC562+pV7wU=qSu4cpgz0253F=Q@mail.gmail.com>
Subject: Re: [PATCH] perf test: Fix dwarf unwind for optimized builds.
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Stephane Eranian <eranian@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: multipart/alternative; boundary="0000000000001b521505b43cba69"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ur9EHk1i;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

--0000000000001b521505b43cba69
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 16, 2020 at 3:03 AM Miguel Ojeda <
miguel.ojeda.sandonis@gmail.com> wrote:

> On Mon, Nov 16, 2020 at 7:48 AM Ian Rogers <irogers@google.com> wrote:
> >
> > GCC [0-9]+ :-) Perhaps just a reference to the GCC bug rather than a
> date.
>
> That would be very good.
>
> > In linux/compiler_attributes.h add:
> > #define __GCC4_has_attribute_disable_tail_calls 0
> > to the #ifndef __has_attribute block. We can't do this locally here as
> after that #include __has_attribute will be defined.
>
> As far as I know, `tools/` use their own `compiler*` files, which is
> why I was suggesting creating the equivalent there.
>
> > In terms of lines of code, there's not much difference. Arguably there
> is a bit more cognitive load from the #include and that disable_tail_call
> needs the funny handling that's here but won't obviously be hinted at by
> placing it in a shared header. I'm a little concerned that someone will
> come across this in shared code and then go and break this test again with
> well intentioned cleanup.
>
> Fewer lines, fewer conditions :-) The `#include` is hardly important
> given kernel developers already know and use compiler attributes in
> many places (they are included in the majority of compilation units).
>
> Actually, we can simplify further. The attribute itself should be
> pulled from the `compiler_attributes.h` (a `tools/` one, if needed),
> and the barrier should likely be the `barrier()` macro (ditto).
>

For tools/ the header is usually a copy and then it is asserted in tools
make files that there is no drift between the two.


> Then, we just need:
>
>     #if __has_attribute(disable_tail_calls)
>     # define NO_TAIL_CALL_BARRIER
>     #else
>     # define NO_TAIL_CALL_BARRIER barrier()
>     #endif
>
> because using the attribute directly just works -- the only special
> thing here is the conditional barrier.
>
> And this conditional barrier should probably be shared, too, defining
> it wherever `barrier()` (or equivalent) is defined for `tools/`. And
> the name could be `barrier_for_tail_call()` or something like that.



Of course, we don't need to do all this for this patch, but we should
> always attempt to minimize/simplify the diffs later on -- that is why
> I suggested using the unconditional `__has_attribute` as if it was
> already properly defined (we had to untangle similar stuff when I
> added `compiler_attributes.h`).
>

I'm hesitant for barrier_for_tail_call to be a thing, modifying multiple
files in the tree and then future clean up efforts coming along and saying
this thing is only needed in this one place so let's remove it. I like
having consistency in the tree, perhaps Peter can give some direction on
what he'd prefer.

Thanks,
Ian

Cheers,
> Miguel
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfWiHDnfaeUUTph--JXOC562%2BpV7wU%3DqSu4cpgz0253F%3DQ%40mail.gmail.com.

--0000000000001b521505b43cba69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Nov 16, 2020 at 3:03 AM Miguel Oj=
eda &lt;<a href=3D"mailto:miguel.ojeda.sandonis@gmail.com">miguel.ojeda.san=
donis@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Mon, Nov 16, 2020 at 7:48 AM I=
an Rogers &lt;<a href=3D"mailto:irogers@google.com" target=3D"_blank">iroge=
rs@google.com</a>&gt; wrote:<br>
&gt;<br>
&gt; GCC [0-9]+ :-) Perhaps just a reference to the GCC bug rather than a d=
ate.<br>
<br>
That would be very good.<br>
<br>
&gt; In linux/compiler_attributes.h add:<br>
&gt; #define __GCC4_has_attribute_disable_tail_calls 0<br>
&gt; to the #ifndef __has_attribute block. We can&#39;t do this locally her=
e as after that #include __has_attribute will be defined.<br>
<br>
As far as I know, `tools/` use their own `compiler*` files, which is<br>
why I was suggesting creating the equivalent there.<br>
<br>
&gt; In terms of lines of code, there&#39;s not much difference. Arguably t=
here is a bit more cognitive load from the #include and that disable_tail_c=
all needs the funny handling that&#39;s here but won&#39;t obviously be hin=
ted at by placing it in a shared header. I&#39;m a little concerned that so=
meone will come across this in shared code and then go and break this test =
again with well intentioned cleanup.<br>
<br>
Fewer lines, fewer conditions :-) The `#include` is hardly important<br>
given kernel developers already know and use compiler attributes in<br>
many places (they are included in the majority of compilation units).<br>
<br>
Actually, we can simplify further. The attribute itself should be<br>
pulled from the `compiler_attributes.h` (a `tools/` one, if needed),<br>
and the barrier should likely be the `barrier()` macro (ditto).<br></blockq=
uote><div><br></div><div>For tools/ the header is usually a copy and then i=
t is asserted in tools make files that there is no drift between the two.</=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Then, we just need:<br>
<br>
=C2=A0 =C2=A0 #if __has_attribute(disable_tail_calls)<br>
=C2=A0 =C2=A0 # define NO_TAIL_CALL_BARRIER<br>
=C2=A0 =C2=A0 #else<br>
=C2=A0 =C2=A0 # define NO_TAIL_CALL_BARRIER barrier()<br>
=C2=A0 =C2=A0 #endif<br>
<br>
because using the attribute directly just works -- the only special<br>
thing here is the conditional barrier.<br>
<br>
And this conditional barrier should probably be shared, too, defining<br>
it wherever `barrier()` (or equivalent) is defined for `tools/`. And<br>
the name could be `barrier_for_tail_call()` or something like that.=C2=A0</=
blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=C2=A0</blockq=
uote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
Of course, we don&#39;t need to do all this for this patch, but we should<b=
r>
always attempt to minimize/simplify the diffs later on -- that is why<br>
I suggested using the unconditional `__has_attribute` as if it was<br>
already properly defined (we had to untangle similar stuff when I<br>
added `compiler_attributes.h`).<br></blockquote><div><br></div><div>I&#39;m=
 hesitant for barrier_for_tail_call to be a thing, modifying multiple files=
 in the tree and then future clean up efforts coming along and saying this =
thing is only needed in this one place so let&#39;s remove it. I like havin=
g consistency in the tree, perhaps Peter can give some direction on what he=
&#39;d prefer.</div><div><br></div><div>Thanks,</div><div>Ian</div><div><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
Cheers,<br>
Miguel<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAP-5%3DfWiHDnfaeUUTph--JXOC562%2BpV7wU%3DqSu4=
cpgz0253F%3DQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">http=
s://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfWiHDnfaeUUTph--JXO=
C562%2BpV7wU%3DqSu4cpgz0253F%3DQ%40mail.gmail.com</a>.<br />

--0000000000001b521505b43cba69--
