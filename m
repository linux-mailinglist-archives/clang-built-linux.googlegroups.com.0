Return-Path: <clang-built-linux+bncBC6NHXNFTUIBBOFA3H2QKGQEVQ3NNIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B40021CBE1B
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 08:39:54 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id 17sf7970648oij.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 23:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o+0ti85aIv1odXP+RFrLgr/afVI9FCDTqjkxssqBpGs=;
        b=BT4zNY6rA/uiRrBbEWWzc81CnTrOYrTGivevK0ORDV5YGxTMLvE56oJEkTyAFsjeTl
         sBvUdGfgpmP2IUK7SPI4LwkGF58vTmk+ZDGsTSc3zxC6EiJBc2w0A7ZnBkpH1ttFHtv+
         BBQISx97zJilaoFt+0T0WOw3WrOc90JWaee8SBOF+Sh0tqhdccJzpdEx7nafIPxhEqtG
         O91AtF0WAkQ1A2J+oOgLiE/4Shd0MT/FG8MGjlPhu7WROAzUYMlFcylrRhMugE13m1+T
         wuI0udiCFuapdnNRJp/6B/2KJhCARD+PpjH1IICI2W1+JsEwcRcjwnjCufcIqjCDOe3O
         9IPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o+0ti85aIv1odXP+RFrLgr/afVI9FCDTqjkxssqBpGs=;
        b=juJ7k+uL/IldZ6mW/OUhhFhfAIYna+uMAVuvBsD64Ip6E9DTB3Eq/6DPhd4kNGxGjx
         7SaqOj+OaWdKZ67LXJyB8xIA5lLjQpVUJTc9B0esLivRPpILGpwfuYLHWJHXkIMcQAym
         qZF8piN1c5sN9V+7nVU5RI35w1t70CDBZGvfLMGdjDdZkERmk3u6tde87ULWPnhPdPmN
         kyV39X5ltOOTkbHpVgtleQ5bHUCYKzvqysaoxBnHY4RNtdhlviMDnvCYQ8u+MC7d3siK
         O/ooE47YFpSu3dTEM5me2xWHiRe6m/EPI2aXeArxUfZz34yV7HGhelN7/Cy80g3Jlvh5
         eTXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o+0ti85aIv1odXP+RFrLgr/afVI9FCDTqjkxssqBpGs=;
        b=RDi5XV5Jxybt3WtTYYgHwDRPprZeLpC6iAnh4H3921dV5ijdWN74W8pfXO5Q/5hV2h
         Ehx+r1uGty/5p+guFfW2vktOmMTVj/iTWrkrql8Hv7tEWmzDq/kKPvz9nMHLaRyaJD8J
         nE3AAfH17aW4reCO5lNlFoIWcPzmA1KJzWT2F1baeHoAsV0XlfTDw0VhUck26QS43xyj
         5b07c3KQYsAbjrQk4OblsIZ1uohblpJhZK3JkRaABaL1Kb91iV2q2Mn0DQJxNJemukvB
         +7WbBHtSFV3Vc1a1LeBn9zYiTHssfPH0rXJwhjxaoGzuKe7uc5IM3tUhy5hNpd0prnHc
         Y2KQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZFp9pxXX77Nm9y+pVqSpUIkF2BSp5isXth18qGlRIKnlYCj8Gx
	hc1oXbpOmWIT2Ur2lGJIXMs=
X-Google-Smtp-Source: APiQypKml0+CC6qo9KJM+4j7O/6p4WmznW6qM5sW8DKrcIiHZfXwf3h2g3bAnzW6OSH7yYI4jv+hlA==
X-Received: by 2002:aca:c282:: with SMTP id s124mr711564oif.0.1589006392867;
        Fri, 08 May 2020 23:39:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1eb:: with SMTP id e98ls973258ote.3.gmail; Fri, 08 May
 2020 23:39:52 -0700 (PDT)
X-Received: by 2002:a05:6830:1082:: with SMTP id y2mr4906489oto.123.1589006392231;
        Fri, 08 May 2020 23:39:52 -0700 (PDT)
Date: Fri, 8 May 2020 23:39:51 -0700 (PDT)
From: craig.topper@gmail.com
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <3276d0f7-bdc8-4a46-aed9-790b9f7bc89c@googlegroups.com>
In-Reply-To: <CAGG=3QVGz+5-2KV-5qt6wSatrVkRvVMXsKato3xDDjKh7JZoSQ@mail.gmail.com>
References: <CAGG=3QVGz+5-2KV-5qt6wSatrVkRvVMXsKato3xDDjKh7JZoSQ@mail.gmail.com>
Subject: Re: Interesting Code Generation Bug
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_713_1230125889.1589006391579"
X-Original-Sender: craig.topper@gmail.com
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

------=_Part_713_1230125889.1589006391579
Content-Type: multipart/alternative; 
	boundary="----=_Part_714_480248941.1589006391579"

------=_Part_714_480248941.1589006391579
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Few things I noticed trying to poke around

The clang frontend is emitting the load/store for l4_hash and sw_hash as an=
=20
i16 despite it being stored in __u8. Not sure how clang decides the types=
=20
for bitfields.

The X86 backend really likes to turn i16 and i8 loads that are least 4 byte=
=20
aligned into i32 loads unless the load is volatile. This helps with folding=
=20
loads into operations especially when operations are promoted from 16 bits.=
=20
But we seem to do it even for loads we aren't folding. It's a 1 byte=20
encoding savings for i8, but doesn't save any bytes for i16. We also prefer=
=20
to widen a 4 byte aligned load so we can fold it into an instruction even=
=20
when there's an immediate to fold. Unless the immediate is [-128, 127].

I think when I looked at some of this back in March. I also spotted some=20
interaction with isTypeDesirableForOp or IsDesirableToPromoteOp in DAG=20
Combiner. Those are two of the functions we use to indicate that i16 is to=
=20
be avoided due to the extra 0x66 prefix in the encoding. I can't remember=
=20
the specifics of how it came into play here.


On Wednesday, May 6, 2020 at 12:50:53 PM UTC-7, Bill Wendling wrote:
>
> This is a bug we came across here at an obscure search company that I=20
> thought people would be interested in and/or may be able to help with:
>
> The cpu has a known problem of reloading a byte/short/int/long right afte=
r=20
> it has been written. Here in GRO, the issue is that=20
> NAPI_GRO_CB(skb)->same_flow is written (at the end of skb_gro_receive()) =
a=20
> few cycles before CLANG reads again the byte containing=20
> NAPI_GRO_CB(skb)->free. The dev_gro_receive() stall: mov $0x5,%r12d cmp=
=20
> $0xffffffffffffff8d,%rbx je 3bd 37.63 522: movzwl 0x4a(%r15),%r14d // Hig=
h=20
> cost reading something already in cache xor %r12d,%r12d 1.08 test=20
> $0xc0,%r14b 1.79 setne %al test %rbx,%rbx 18.69% [kernel] [k]=20
> gq_rx_alloc_page 14.19% [kernel] [k] dev_gro_receive // Only with CLANG=
=3D1=20
> we can see such high cost 13.02% [kernel] [k] gq_rx_napi_handler 7.95%=20
> [kernel] [k] tcp_gro_receive 7.32% [kernel] [k]=20
> __direct_call_packet_offload_callbacks_gro_receive1 5.34% [kernel] [k]=20
> skb_gro_receive =E2=94=82 000000000022b880 <clear_b1>: =E2=94=82 clear_b1=
(): 3.97 =E2=94=82 callq=20
> __fentry__ =E2=94=82 push %rbp 3.77 =E2=94=82 mov %rsp,%rbp 90.62 =E2=94=
=82 andb $0xfe,(%rdi) //=20
> byte access 1.63 =E2=94=82 pop %rbp =E2=94=82 retq While the iter() stuff=
 uses word access=20
> : 0.89 =E2=94=82 and $0x1,%r12d =E2=94=82 mov %r14,%rdi 1.16 =E2=94=82 ca=
llq clear_b1 33.36 =E2=94=82 mov=20
> 0x2bfd90(%r13),%ecx // very high penalty 0.10 =E2=94=82 mov %ecx,%edx 1.8=
9 =E2=94=82 shr=20
> $0x8,%edx 3.59 =E2=94=82 add %ebx,%edx 1.37 =E2=94=82 and $0x1,%edx =E2=
=94=82 mov %edx,%eax 1.72 =E2=94=82=20
> shl $0x8,%eax 0.83 =E2=94=82 and $0xfffffeff,%ecx 1.21 =E2=94=82 or %eax,=
%ecx 4.24 =E2=94=82 mov=20
> %ecx,0x2bfd90(%r13) 0.02 =E2=94=82 addl $0x1,0x2bfd94(%r13) =E2=94=82 mov=
 %r12d,%eax 2.28 =E2=94=82=20
> shl $0x18,%eax =E2=94=82 test %edx,%edx 0.02 =E2=94=82 je 20 8.72 =E2=94=
=82 and $0xfeffffff,%ecx=20
> 0.69 =E2=94=82 or %eax,%ecx 2.66 =E2=94=82 mov %ecx,(%r14) =E2=94=82 jmpq=
 20 Another very high cost=20
> with CLANG is the skb->l4_hash setting, done with again a read of a 32bit=
=20
> quantity in order to set a 2bit bitfield. skb_set_hash(skb,=20
> be32_to_cpu(desc->rss_hash), gq_rss_type(desc->flags_seq)); mov=20
> 0x80(%r13),%ecx // 40% of cpu cycles in gq_rx_napi_handler() ! mov=20
> $0xfffffcff,%esi and %esi,%ecx or %edx,%ecx mov %cx,0x80(%r13) Again, thi=
s=20
> high cost (reading 32bits) is because of a prior write of 16bits in=20
> 0x80(%r13): mov 0x80(%r13),%eax and $0xffffff9f,%eax or $0x40,%eax mov=20
> %ax,0x80(%r13) // writing 16bits ! This prior sequence is about=20
> skb->ip_summed being set: skb->ip_summed =3D CHECKSUM_COMPLETE; Here is w=
hat=20
> gcc emits (no mix of bytes/word access) 765: 0f b6 83 80 00 00 00 movzbl=
=20
> 0x80(%rbx),%eax // byte load 76c: 83 e0 9f and $0xffffff9f,%eax 76f: 83 c=
8=20
> 40 or $0x40,%eax 772: 88 83 80 00 00 00 mov %al,0x80(%rbx) // byte write=
=20
> ... 79e: 0f b6 83 81 00 00 00 movzbl 0x81(%rbx),%eax // byte load 7a5: 41=
=20
> 8b 56 08 mov 0x8(%r14),%edx 7a9: 40 0f 95 c6 setne %sil 7ad: 83 e0 fc and=
=20
> $0xfffffffc,%eax 7b0: 0f ca bswap %edx 7b2: 09 f0 or %esi,%eax 7b4: 89 93=
=20
> 94 00 00 00 mov %edx,0x94(%rbx) 7ba: 88 83 81 00 00 00 mov %al,0x81(%rbx)=
=20
> // byte write=20
> Replication program is attached. Some results:
>
> $ perf stat -r10 -e cycles clang-bitfield: 8,709,304,936 cycles:u ( +-=20
> 0.34% ) 2.8238 +- 0.0131 seconds time elapsed ( +- 0.46% ) $ perf stat -r=
10=20
> -e cycles clang-bitfield-word: 8,059,274,548 cycles:u ( +- 0.13% ) 2.6271=
=20
> +- 0.0118 seconds time elapsed ( +- 0.45% ) $ perf stat -r10 -e cycles=20
> gcc-bitfield: 7,841,119,839 cycles:u ( +- 0.25% ) 2.5847 +- 0.0151 second=
s=20
> time elapsed ( +- 0.58% )
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3276d0f7-bdc8-4a46-aed9-790b9f7bc89c%40googlegroups.com.

------=_Part_714_480248941.1589006391579
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Few things I noticed trying to poke around<div><br></div><=
div>The clang frontend is emitting the load/store for=C2=A0l4_hash and=C2=
=A0sw_hash as an i16 despite it being stored in __u8. Not sure how clang de=
cides the types for bitfields.</div><div><br></div><div>The X86 backend rea=
lly likes to turn i16 and i8 loads that are least 4 byte aligned into i32 l=
oads unless the load is volatile. This helps with folding loads into operat=
ions especially when operations are promoted from 16 bits. But we seem to d=
o it even for loads we aren&#39;t folding. It&#39;s a 1 byte encoding savin=
gs for i8, but doesn&#39;t save any bytes for i16. We also prefer to widen =
a 4 byte aligned load so we can fold it into an instruction even when there=
&#39;s an immediate to fold. Unless the immediate is [-128, 127].</div><div=
><br></div><div>I think when I looked at some of this back in March. I also=
 spotted some interaction with=C2=A0isTypeDesirableForOp or=C2=A0IsDesirabl=
eToPromoteOp in DAG Combiner. Those are two of the functions we use to indi=
cate that i16 is to be avoided due to the extra 0x66 prefix in the encoding=
. I can&#39;t remember the specifics of how it came into play here.<br><div=
><br></div><div><br>On Wednesday, May 6, 2020 at 12:50:53 PM UTC-7, Bill We=
ndling wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-le=
ft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">=
<div style=3D"margin:15px 0px 11px;border:0px;font-weight:inherit;font-styl=
e:inherit;font-size:13px;font-family:inherit;vertical-align:baseline;outlin=
e:0px"><div style=3D"margin:0px;border:0px;font-weight:inherit;font-style:i=
nherit;font-family:inherit;vertical-align:baseline;outline:0px"><span><div =
style=3D"margin:11px 0px 0px;border:0px;font-weight:inherit;font-style:inhe=
rit;font-family:inherit;vertical-align:baseline;line-height:18px;word-break=
:break-word;display:flex;outline:0px"><div style=3D"margin:0px;border:0px;f=
ont-weight:inherit;font-style:inherit;font-family:inherit;vertical-align:ba=
seline;display:flex;min-width:0px;outline:0px"><span><span><div style=3D"ma=
rgin:0px;border:0px;font-style:inherit;font-size:0.8125rem;font-family:Work=
AroundWebKitAndMozilla,monospace;vertical-align:baseline;outline:0px;letter=
-spacing:0.0142857em;line-height:1.38462"><span><span><div style=3D"margin:=
0px;border:0px;font-weight:inherit;font-style:inherit;font-family:inherit;v=
ertical-align:baseline;outline:0px;white-space:pre-wrap"><div style=3D"marg=
in:0px;border:0px;font-weight:inherit;font-style:inherit;font-family:inheri=
t;vertical-align:baseline;outline:0px">This is a bug we came across here at=
 an obscure search company that I  thought people would be interested in an=
d/or may be able to help with:</div><div style=3D"margin:0px;border:0px;fon=
t-weight:inherit;font-style:inherit;font-family:inherit;vertical-align:base=
line;outline:0px"><br></div><div style=3D"margin:0px;border:0px;font-weight=
:inherit;font-style:inherit;font-family:inherit;vertical-align:baseline;out=
line:0px">The cpu has a known problem of reloading a byte/short/int/long ri=
ght after it has been written.

Here in GRO, the issue is that NAPI_GRO_CB(skb)-&gt;same_flow is written (a=
t the end of skb_gro_receive()) a few cycles before CLANG reads again the b=
yte containing NAPI_GRO_CB(skb)-&gt;free.

The dev_gro_receive() stall:

               mov    $0x5,%r12d
               cmp    $0xffffffffffffff8d,%rbx
               je     3bd
  37.63 522:   movzwl 0x4a(%r15),%r14d  // High cost reading something alre=
ady in cache
               xor    %r12d,%r12d
   1.08        test   $0xc0,%r14b
   1.79        setne  %al
               test   %rbx,%rbx

   18.69%  [kernel]          [k] gq_rx_alloc_page
   14.19%  [kernel]          [k] dev_gro_receive  // Only with CLANG=3D1 we=
 can see such high cost
   13.02%  [kernel]          [k] gq_rx_napi_handler
    7.95%  [kernel]          [k] tcp_gro_receive
    7.32%  [kernel]          [k] __direct_call_packet_offload_<wbr>callback=
s_gro_receive1
    5.34%  [kernel]          [k] skb_gro_receive



       =E2=94=82   000000000022b880 &lt;clear_b1&gt;:
       =E2=94=82   clear_b1():
  3.97 =E2=94=82     callq  __fentry__
       =E2=94=82     push   %rbp
  3.77 =E2=94=82     mov    %rsp,%rbp
 90.62 =E2=94=82     andb   $0xfe,(%rdi) // byte access
  1.63 =E2=94=82     pop    %rbp
       =E2=94=82     retq

While the iter() stuff uses word access :

  0.89 =E2=94=82      and    $0x1,%r12d
       =E2=94=82      mov    %r14,%rdi
  1.16 =E2=94=82      callq  clear_b1
 33.36 =E2=94=82      mov    0x2bfd90(%r13),%ecx  // very high penalty
  0.10 =E2=94=82      mov    %ecx,%edx
  1.89 =E2=94=82      shr    $0x8,%edx
  3.59 =E2=94=82      add    %ebx,%edx
  1.37 =E2=94=82      and    $0x1,%edx
       =E2=94=82      mov    %edx,%eax
  1.72 =E2=94=82      shl    $0x8,%eax
  0.83 =E2=94=82      and    $0xfffffeff,%ecx
  1.21 =E2=94=82      or     %eax,%ecx
  4.24 =E2=94=82      mov    %ecx,0x2bfd90(%r13)
  0.02 =E2=94=82      addl   $0x1,0x2bfd94(%r13)
       =E2=94=82      mov    %r12d,%eax
  2.28 =E2=94=82      shl    $0x18,%eax
       =E2=94=82      test   %edx,%edx
  0.02 =E2=94=82      je     20
  8.72 =E2=94=82      and    $0xfeffffff,%ecx
  0.69 =E2=94=82      or     %eax,%ecx
  2.66 =E2=94=82      mov    %ecx,(%r14)
       =E2=94=82      jmpq   20

Another very high cost with CLANG is the skb-&gt;l4_hash setting, done with=
 again a read of a 32bit quantity in order to set a 2bit bitfield.

skb_set_hash(skb, be32_to_cpu(desc-&gt;rss_hash), gq_rss_type(desc-&gt;flag=
s_seq));

mov    0x80(%r13),%ecx  // 40% of cpu cycles in gq_rx_napi_handler() !
mov    $0xfffffcff,%esi
and    %esi,%ecx
or     %edx,%ecx
mov    %cx,0x80(%r13)

Again, this high cost (reading 32bits) is because of a prior write of 16bit=
s in 0x80(%r13):

mov    0x80(%r13),%eax
and    $0xffffff9f,%eax
or     $0x40,%eax
mov    %ax,0x80(%r13)   // writing 16bits !

This prior sequence is about skb-&gt;ip_summed being set: skb-&gt;ip_summed=
 =3D CHECKSUM_COMPLETE;

Here is what gcc emits (no mix of bytes/word access)

     765: 0f b6 83 80 00 00 00 movzbl 0x80(%rbx),%eax  // byte load
     76c: 83 e0 9f             and    $0xffffff9f,%eax
     76f: 83 c8 40             or     $0x40,%eax
     772: 88 83 80 00 00 00     mov    %al,0x80(%rbx) // byte write

...
     79e: 0f b6 83 81 00 00 00 movzbl 0x81(%rbx),%eax  // byte load
     7a5: 41 8b 56 08           mov    0x8(%r14),%edx
     7a9: 40 0f 95 c6           setne  %sil
     7ad: 83 e0 fc             and    $0xfffffffc,%eax
     7b0: 0f ca                 bswap  %edx
     7b2: 09 f0                 or     %esi,%eax
     7b4: 89 93 94 00 00 00     mov    %edx,0x94(%rbx)
     7ba: 88 83 81 00 00 00     mov    %al,0x81(%rbx)  // byte write
<br></div><div style=3D"margin:0px;border:0px;font-weight:inherit;font-styl=
e:inherit;font-family:inherit;vertical-align:baseline;outline:0px">Replicat=
ion program is attached. Some results:</div><div style=3D"margin:0px;border=
:0px;font-weight:inherit;font-style:inherit;font-family:inherit;vertical-al=
ign:baseline;outline:0px"><br></div><div style=3D"margin:0px;border:0px;fon=
t-weight:inherit;font-style:inherit;font-family:inherit;vertical-align:base=
line;outline:0px"><span style=3D"color:rgb(32,33,36);letter-spacing:0.18571=
4px">$ perf stat -r10 -e cycles clang-bitfield:
    8,709,304,936      cycles:u ( +-  0.34% )
    2.8238 +- 0.0131 seconds time elapsed  ( +-  0.46% )

$ perf stat -r10 -e cycles clang-bitfield-word:
   8,059,274,548      cycles:u  ( +-  0.13% )
   2.6271 +- 0.0118 seconds time elapsed  ( +-  0.45% )

$ perf stat -r10 -e cycles gcc-bitfield:
    7,841,119,839      cycles:u  ( +-  0.25% )
    2.5847 +- 0.0151 seconds time elapsed  ( +-  0.58% )</span><br></div></=
div></span></span></div></span></span></div></div></span></div></div><div s=
tyle=3D"margin:0px;border:0px;font-weight:inherit;font-style:inherit;font-s=
ize:13px;font-family:inherit;vertical-align:baseline;clear:both;outline:0px=
"></div><div style=3D"margin:10px 0px;border-width:1px 0px 0px;border-top-s=
tyle:solid;border-right-style:initial;border-bottom-style:initial;border-le=
ft-style:initial;border-top-color:rgb(229,229,229);border-right-color:initi=
al;border-bottom-color:initial;border-left-color:initial;font-weight:inheri=
t;font-style:inherit;font-size:13px;font-family:inherit;vertical-align:base=
line;outline:0px"><div style=3D"margin:10px 0px;border:0px;font-weight:inhe=
rit;font-style:inherit;font-family:inherit;vertical-align:baseline;outline:=
0px"><div style=3D"margin:5px;border:0px;font-family:Roboto,Arial,sans-seri=
f;vertical-align:baseline;float:left;outline:0px;color:rgb(32,33,36);letter=
-spacing:0.185714px"><span name=3D"file-present" size=3D"large" style=3D"co=
lor:rgb(60,64,67);display:inline-block;line-height:0;vertical-align:middle"=
><span style=3D"background-repeat:no-repeat;display:inline-block;min-height=
:24px;width:24px"></span></span></div></div></div></div>
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/3276d0f7-bdc8-4a46-aed9-790b9f7bc89c%40googleg=
roups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com=
/d/msgid/clang-built-linux/3276d0f7-bdc8-4a46-aed9-790b9f7bc89c%40googlegro=
ups.com</a>.<br />

------=_Part_714_480248941.1589006391579--

------=_Part_713_1230125889.1589006391579--
