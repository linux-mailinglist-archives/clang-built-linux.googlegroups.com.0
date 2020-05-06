Return-Path: <clang-built-linux+bncBD66FMGZA4IJ3KWM6UCRUBEGMJANO@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 081211C7A7D
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 21:50:56 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id a19sf1156977uah.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 12:50:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588794654; cv=pass;
        d=google.com; s=arc-20160816;
        b=0wkH4AUTRJemB0/W1cXVLcQjKzeL+gy7oGKY+4sCo5KfB3gtAA4t7VEA0J9tyx/Pyk
         y4n99ExoQPFuau8QOBuTgpoN1LZDJci0hZpalewnzjUm9QvRLNbJExMWXGjptco+DEMb
         sRrg+AgX5YpvFnbjuYkkJZs90lO6jZqa+DYzsfzhUSC+MCysPMMnmFtNPV05T0WmHdNl
         IaLAxp6MJlQP5+LihgIuT+n0sbAs4avY/vzCAVVtKpr9EysDFboxgLhTrlAvjHdXiFu9
         Yc87hxYQz1HSA7ordD8pik0HDlFZLOhHEgSIaMM9y9/aNhiLUVMyUZdpM1UOb9egzp6G
         CI7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=AOWRBVAM23MUtLVImOWmZHwb70pKIajFxQd4aya1Sds=;
        b=XlC9KQ4qTzAzede/jDHAFUMLDei6B71LJKcwr4CKKZO2tqej0+d56NzAUFRhgCS8Sz
         zc3dr4E2Z+v3dyi1Dn1/TNaKrO8jSrICGN+pJjbt6GtYU9udT8N0TX4bDE/DxKlF4mww
         53azfF9o3dRTuE9JY3EAuZpmvJefBSLkaByAiO2d3YlYwOl8N7JQzFxuPjoKKSITDyoX
         BUZQYg+1g8Nx27QuVc4rHNOiLGZJW0eHOiHoYNAzKLzrSMwHfSZD+pO9+OlIK/3S1BAw
         KnDmNzZfi+yJhMGw9xe65F7aResexx+4UFf9IcdkIBf8YdZaIJ18pXaWvlRQ1aokSYvM
         56+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Enju0bAI;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::92e as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=AOWRBVAM23MUtLVImOWmZHwb70pKIajFxQd4aya1Sds=;
        b=fyn6F7wVA8Bzj/rvFjoibKkRBp44/yrpz7SDcJ9itwy711X2S2lYpI2IgS82+9DpHZ
         aryXs/SQy236bUepISsmIhPHuCXKofl/jgUEXiR82//o5NVnPLV71OTfOSqGqaWJOFyt
         DwvIOH8rNcvaeM01KvShljnopAr7pg5AUoqCVsAkeLfpNtGQxQuLtsSNNLNLv7KGjPWh
         NzPuF1zMIEBc+NveMwi951isryf3OignQ5UV4CCo8DGz6fmYKnWb8RDqqWoQkHzdWdTz
         gz3Ghr/5GR+yjh0lhq/4Sxf+8FtsV3QpgjX2D/r0npzC7u57ZdV7VtFmaXRvWMA2kcac
         CmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AOWRBVAM23MUtLVImOWmZHwb70pKIajFxQd4aya1Sds=;
        b=htWjPP/V0B4OoNWB/ytpLNfiHjNWvLHz1/XKgkWGBolXj8hEmoDj/jwABRG+nNekuh
         lbOizF8do/My4KDJr4iQ0PPOfCwKQgu44WGTCCozpfd0BFTbOMaejRJQRQSQfUr7XjJQ
         NWs0Jjaj0IL8DTyZn1GEdD6GnkCSssEAF1KksgBPmqmEwvsR8V80fhUXzBbppYnhowHR
         4kaK/6MXPqAwuOdJuWtkUmxhm+dtp/6Wxtz3VD11CA1kPNlvOxBk4NFSIlhZisFaCLy3
         l/TJ0gaKN7xxd8hBq1ZXXjYu2U9+VhnCIOMgLZYmTuZX2UhIrrcvWY+HPbGDIFRz1Qz2
         +UGA==
X-Gm-Message-State: AGi0PubYWaYdbuMRJnX9m8cFw3k83p7A8AkExLYFA5UhKidMBDCB8LGi
	IiXlqyEFmzlrSa7Pzi8xGpQ=
X-Google-Smtp-Source: APiQypK1P8+IH1Sh4L/WvYs+uXj6uZLVufOUq47u/7PY8w/RiB5SShpzXON7HMVFVoKEPfdHTm169w==
X-Received: by 2002:a9f:2b0a:: with SMTP id p10mr8965049uaj.10.1588794653236;
        Wed, 06 May 2020 12:50:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb99:: with SMTP id n25ls144335vsr.5.gmail; Wed, 06 May
 2020 12:50:52 -0700 (PDT)
X-Received: by 2002:a05:6102:392:: with SMTP id m18mr10218259vsq.38.1588794652729;
        Wed, 06 May 2020 12:50:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588794652; cv=none;
        d=google.com; s=arc-20160816;
        b=euBlC7rbgjp1i4JjuDryvDm+GP19fiwJf8KqcgzEM63dddDEflsqWPOkECEyfzAW6z
         rKn97AO8COnGNWMA542MzXK9v6VlgKMcOQrv2KaJeGXwqseB1UfTKt9W+oD6zlhZ7hBL
         gExwUsVeRG2hVTlqEjDQbYNe/MlLA2HEg4gaNs81orNDUzwNKJ3q6IJq8WTX9mF0t6Mt
         rBg8JTvWDbZKHQRkLVNFiEunuXd3XE3yNYaNJ68ryt3s7FxzCb0uh6bND5nkX1Eg23ll
         RzIsslQi6ncDpEVhazSEgcoj5WcaKDAG6aSiNYbxNefpmO5MlPfPvwfuoGNBsF7qHGfh
         g1uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=gEP3H3lL50E7DgCBH9+fjuGxCMMvt/u2Td4nNsG5dO4=;
        b=gEdLd5ea+KwmOzjYiy7ihKrHJ0DoGINr5JXnXuILvfDurLcl4UiUPWNsO4LaF+Bew+
         UesXwruy6AGvyqNutMddOX6SFISu9jmzAI+0uj1PjbEwYGeVHIVYO09x4GECy+VNtrG8
         z7B4hDVASKaN5YSvsq1QXiKvQ38XaCBkYQq3AtlM0cAI/LFBkZRBMu0mrYPrD/E4wJuU
         +N5d6BwicTCV4d+VuZpGDl+44UBJ7JOV6FUoK+Sf/7v7LHZT6qoswnaSXZAlGh3yg0N0
         UJlqL0z54SQ5SvPnSfb1HXr2jvOVUEXVuXrYbPe9hmwkM56d3QOE+gAhy/W71FOjFusZ
         ZzCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Enju0bAI;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::92e as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com. [2607:f8b0:4864:20::92e])
        by gmr-mx.google.com with ESMTPS id l3si291498uap.0.2020.05.06.12.50.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 12:50:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::92e as permitted sender) client-ip=2607:f8b0:4864:20::92e;
Received: by mail-ua1-x92e.google.com with SMTP id u12so973777uau.10
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 12:50:52 -0700 (PDT)
X-Received: by 2002:ab0:7298:: with SMTP id w24mr8851898uao.95.1588794651663;
 Wed, 06 May 2020 12:50:51 -0700 (PDT)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 May 2020 12:50:40 -0700
Message-ID: <CAGG=3QVGz+5-2KV-5qt6wSatrVkRvVMXsKato3xDDjKh7JZoSQ@mail.gmail.com>
Subject: Interesting Code Generation Bug
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/mixed; boundary="000000000000d6397705a5001477"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Enju0bAI;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::92e as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

--000000000000d6397705a5001477
Content-Type: multipart/alternative; boundary="000000000000d6397505a5001475"

--000000000000d6397505a5001475
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is a bug we came across here at an obscure search company that I
thought people would be interested in and/or may be able to help with:

The cpu has a known problem of reloading a byte/short/int/long right after
it has been written. Here in GRO, the issue is that
NAPI_GRO_CB(skb)->same_flow is written (at the end of skb_gro_receive()) a
few cycles before CLANG reads again the byte containing
NAPI_GRO_CB(skb)->free. The dev_gro_receive() stall: mov $0x5,%r12d cmp
$0xffffffffffffff8d,%rbx je 3bd 37.63 522: movzwl 0x4a(%r15),%r14d // High
cost reading something already in cache xor %r12d,%r12d 1.08 test
$0xc0,%r14b 1.79 setne %al test %rbx,%rbx 18.69% [kernel] [k]
gq_rx_alloc_page 14.19% [kernel] [k] dev_gro_receive // Only with CLANG=3D1
we can see such high cost 13.02% [kernel] [k] gq_rx_napi_handler 7.95%
[kernel] [k] tcp_gro_receive 7.32% [kernel] [k]
__direct_call_packet_offload_callbacks_gro_receive1 5.34% [kernel] [k]
skb_gro_receive =E2=94=82 000000000022b880 <clear_b1>: =E2=94=82 clear_b1()=
: 3.97 =E2=94=82 callq
__fentry__ =E2=94=82 push %rbp 3.77 =E2=94=82 mov %rsp,%rbp 90.62 =E2=94=82=
 andb $0xfe,(%rdi) //
byte access 1.63 =E2=94=82 pop %rbp =E2=94=82 retq While the iter() stuff u=
ses word access
: 0.89 =E2=94=82 and $0x1,%r12d =E2=94=82 mov %r14,%rdi 1.16 =E2=94=82 call=
q clear_b1 33.36 =E2=94=82 mov
0x2bfd90(%r13),%ecx // very high penalty 0.10 =E2=94=82 mov %ecx,%edx 1.89 =
=E2=94=82 shr
$0x8,%edx 3.59 =E2=94=82 add %ebx,%edx 1.37 =E2=94=82 and $0x1,%edx =E2=94=
=82 mov %edx,%eax 1.72 =E2=94=82
shl $0x8,%eax 0.83 =E2=94=82 and $0xfffffeff,%ecx 1.21 =E2=94=82 or %eax,%e=
cx 4.24 =E2=94=82 mov
%ecx,0x2bfd90(%r13) 0.02 =E2=94=82 addl $0x1,0x2bfd94(%r13) =E2=94=82 mov %=
r12d,%eax 2.28 =E2=94=82
shl $0x18,%eax =E2=94=82 test %edx,%edx 0.02 =E2=94=82 je 20 8.72 =E2=94=82=
 and $0xfeffffff,%ecx
0.69 =E2=94=82 or %eax,%ecx 2.66 =E2=94=82 mov %ecx,(%r14) =E2=94=82 jmpq 2=
0 Another very high cost
with CLANG is the skb->l4_hash setting, done with again a read of a 32bit
quantity in order to set a 2bit bitfield. skb_set_hash(skb,
be32_to_cpu(desc->rss_hash), gq_rss_type(desc->flags_seq)); mov
0x80(%r13),%ecx // 40% of cpu cycles in gq_rx_napi_handler() ! mov
$0xfffffcff,%esi and %esi,%ecx or %edx,%ecx mov %cx,0x80(%r13) Again, this
high cost (reading 32bits) is because of a prior write of 16bits in
0x80(%r13): mov 0x80(%r13),%eax and $0xffffff9f,%eax or $0x40,%eax mov
%ax,0x80(%r13) // writing 16bits ! This prior sequence is about
skb->ip_summed being set: skb->ip_summed =3D CHECKSUM_COMPLETE; Here is wha=
t
gcc emits (no mix of bytes/word access) 765: 0f b6 83 80 00 00 00 movzbl
0x80(%rbx),%eax // byte load 76c: 83 e0 9f and $0xffffff9f,%eax 76f: 83 c8
40 or $0x40,%eax 772: 88 83 80 00 00 00 mov %al,0x80(%rbx) // byte write
... 79e: 0f b6 83 81 00 00 00 movzbl 0x81(%rbx),%eax // byte load 7a5: 41
8b 56 08 mov 0x8(%r14),%edx 7a9: 40 0f 95 c6 setne %sil 7ad: 83 e0 fc and
$0xfffffffc,%eax 7b0: 0f ca bswap %edx 7b2: 09 f0 or %esi,%eax 7b4: 89 93
94 00 00 00 mov %edx,0x94(%rbx) 7ba: 88 83 81 00 00 00 mov %al,0x81(%rbx)
// byte write
Replication program is attached. Some results:

$ perf stat -r10 -e cycles clang-bitfield: 8,709,304,936 cycles:u ( +-
0.34% ) 2.8238 +- 0.0131 seconds time elapsed ( +- 0.46% ) $ perf stat -r10
-e cycles clang-bitfield-word: 8,059,274,548 cycles:u ( +- 0.13% ) 2.6271
+- 0.0118 seconds time elapsed ( +- 0.45% ) $ perf stat -r10 -e cycles
gcc-bitfield: 7,841,119,839 cycles:u ( +- 0.25% ) 2.5847 +- 0.0151 seconds
time elapsed ( +- 0.58% )

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGG%3D3QVGz%2B5-2KV-5qt6wSatrVkRvVMXsKato3xDDjKh7JZoSQ%4=
0mail.gmail.com.

--000000000000d6397505a5001475
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-bv2-event-note-container" style=3D"mar=
gin:15px 0px 11px;border:0px;font-weight:inherit;font-style:inherit;font-si=
ze:13px;font-family:inherit;vertical-align:baseline;outline:0px"><div style=
=3D"margin:0px;border:0px;font-weight:inherit;font-style:inherit;font-famil=
y:inherit;vertical-align:baseline;outline:0px"><span class=3D"gmail-ng-star=
-inserted"><div class=3D"gmail-bv2-note-container gmail-bv2-event-note" sty=
le=3D"margin:11px 0px 0px;border:0px;font-weight:inherit;font-style:inherit=
;font-family:inherit;vertical-align:baseline;line-height:18px;word-break:br=
eak-word;display:flex;outline:0px"><div class=3D"gmail-bv2-note-container-n=
ote" style=3D"margin:0px;border:0px;font-weight:inherit;font-style:inherit;=
font-family:inherit;vertical-align:baseline;display:flex;min-width:0px;outl=
ine:0px"><span class=3D"gmail-ng-star-inserted"><span class=3D"gmail-ng-sta=
r-inserted"><div class=3D"gmail-type-m gmail-codefont" style=3D"margin:0px;=
border:0px;font-style:inherit;font-size:0.8125rem;font-family:WorkAroundWeb=
KitAndMozilla,monospace;vertical-align:baseline;outline:0px;letter-spacing:=
0.0142857em;line-height:1.38462"><span class=3D"gmail-ng-star-inserted"><sp=
an class=3D"gmail-ng-star-inserted"><div class=3D"gmail-child" style=3D"mar=
gin:0px;border:0px;font-weight:inherit;font-style:inherit;font-family:inher=
it;vertical-align:baseline;outline:0px;white-space:pre-wrap"><div style=3D"=
margin:0px;border:0px;font-weight:inherit;font-style:inherit;font-family:in=
herit;vertical-align:baseline;outline:0px">This is a bug we came across her=
e at an obscure search company that I  thought people would be interested i=
n and/or may be able to help with:</div><div style=3D"margin:0px;border:0px=
;font-weight:inherit;font-style:inherit;font-family:inherit;vertical-align:=
baseline;outline:0px"><br></div><div style=3D"margin:0px;border:0px;font-we=
ight:inherit;font-style:inherit;font-family:inherit;vertical-align:baseline=
;outline:0px">The cpu has a known problem of reloading a byte/short/int/lon=
g right after it has been written.

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
    7.32%  [kernel]          [k] __direct_call_packet_offload_callbacks_gro=
_receive1
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
div></span></span></div></span></span></div></div></span></div></div><div c=
lass=3D"gmail-float-clear" style=3D"margin:0px;border:0px;font-weight:inher=
it;font-style:inherit;font-size:13px;font-family:inherit;vertical-align:bas=
eline;clear:both;outline:0px"></div><div class=3D"gmail-bv2-issue-event-att=
achments gmail-ng-star-inserted" style=3D"margin:10px 0px;border-width:1px =
0px 0px;border-top-style:solid;border-right-style:initial;border-bottom-sty=
le:initial;border-left-style:initial;border-top-color:rgb(229,229,229);bord=
er-right-color:initial;border-bottom-color:initial;border-left-color:initia=
l;font-weight:inherit;font-style:inherit;font-size:13px;font-family:inherit=
;vertical-align:baseline;outline:0px"><div class=3D"gmail-bv2-issue-event-a=
ttachment gmail-ng-star-inserted" id=3D"gmail-attachment29350760" style=3D"=
margin:10px 0px;border:0px;font-weight:inherit;font-style:inherit;font-fami=
ly:inherit;vertical-align:baseline;outline:0px"><div class=3D"gmail-bv2-iss=
ue-attachment-image" style=3D"margin:5px;border:0px;font-family:Roboto,Aria=
l,sans-serif;vertical-align:baseline;float:left;outline:0px;color:rgb(32,33=
,36);letter-spacing:0.185714px"><span class=3D"gmail-bv2-issue-attachment-i=
con" name=3D"file-present" size=3D"large" style=3D"color:rgb(60,64,67);disp=
lay:inline-block;line-height:0;vertical-align:middle"><span class=3D"gmail-=
mat-icon gmail-notranslate gmail-file-present gmail-large gmail-mat-icon-no=
-color" style=3D"background-repeat:no-repeat;display:inline-block;height:24=
px;width:24px"></span></span></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QVGz%2B5-2KV-5qt6wSatrVkRvVMXsKato3xDD=
jKh7JZoSQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVGz%2B5-2KV-5qt6wSatrV=
kRvVMXsKato3xDDjKh7JZoSQ%40mail.gmail.com</a>.<br />

--000000000000d6397505a5001475--
--000000000000d6397705a5001477
Content-Type: application/octet-stream; name="bitfield.c"
Content-Disposition: attachment; filename="bitfield.c"
Content-Transfer-Encoding: base64
Content-ID: <f_k9vr95tm0>
X-Attachment-Id: f_k9vr95tm0

LyoKICogdGVzdCBwcm9ncmFtIHVzaW5nIGJpdGZpZWxkcy4KICovCiNpbmNsdWRlICJiaXRmaWVs
ZC5oIgoKI2luY2x1ZGUgPHN0ZGxpYi5oPgoKI2RlZmluZSBTSVpFX0FSUkFZIDEwMjQgKiAxMDI0
CiNkZWZpbmUgTE9PUENOVCAxMDAwMDAwMDAKCmJpdF9maWVsZHNfdCBhcnJheVtTSVpFX0FSUkFZ
XTsKCl9fYXR0cmlidXRlX18oKG5vaW5saW5lKSkgdm9pZCBpdGVyKGJpdF9maWVsZHNfdCAqQSwg
dW5zaWduZWQgaW50IGlkeCkgewogIGJpdF9maWVsZHNfdCAqcHRyID0gQSArIChpZHggJSBTSVpF
X0FSUkFZKTsKICBpbnQgdmFsID0gKGlkeCAlIDE1KSAmIDE7CgogIGNsZWFyX2IxKHB0cik7CiAg
cHRyLT5iMiArPSB2YWw7CiAgcHRyLT53b3JkMSsrOwogIGlmIChwdHItPmIyKSBwdHItPmI0ID0g
dmFsOwogIHB0ci0+YjUgfD0gdmFsOwogIHB0ci0+YjYgPSB2YWw7CiAgcHRyLT5iNyAmPSB2YWw7
CiAgcHRyLT5iOCBePSB2YWw7Cn0KCmludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pIHsK
ICBpbnQgbDsKCiAgZm9yIChsID0gMDsgbCA8IExPT1BDTlQ7IGwrKykgaXRlcihhcnJheSwgcmFu
ZG9tKCkpOwogIHJldHVybiAwOwp9Cg==
--000000000000d6397705a5001477
Content-Type: application/octet-stream; name="clear.c"
Content-Disposition: attachment; filename="clear.c"
Content-Transfer-Encoding: base64
Content-ID: <f_k9vr95ul1>
X-Attachment-Id: f_k9vr95ul1

I2luY2x1ZGUgImJpdGZpZWxkLmgiCgp2b2lkIGNsZWFyX2IxKGJpdF9maWVsZHNfdCAqcHRyKQp7
CiNpZm5kZWYgV09SRAogIHB0ci0+YjEgPSAwOwojZWxzZQogYXNtICgKICAgImFuZGwgJDB4ZmZm
ZmZmZmUsICglcmRpKSIKICAgKTsgCiNlbmRpZgp9Cg==
--000000000000d6397705a5001477
Content-Type: application/octet-stream; name=makefile
Content-Disposition: attachment; filename=makefile
Content-Transfer-Encoding: base64
Content-ID: <f_k9vr9zfh3>
X-Attachment-Id: f_k9vr9zfh3

I0NMQU5HPS91c3IvbG9jYWwvZ29vZ2xlL2hvbWUvZWR1bWF6ZXQvZ2l0L3JlYmFzZTkwMC5naXQv
Z2J1aWxkLW9iai9vYmpfeDg2XzY0X3NtcC1iZjk3YWQ4ZTlkOGMxNmRmMzc5M2ZlM2FiN2NhNDIy
NWUxMjI1NWRlL3dyYXBwZXJzLzE4LXg4Ni1jbGFuZy8zN2MyZTJlNmFlOTJmMTUwMTgzMjVmNjAx
YzFiZTg1MTJmNjM1MDMwL3g4Nl82NC1ncnRldjQtbGludXgtZ251LWNsYW5nCkNMQU5HPS9nb29n
bGUvc3JjL2hlYWQvZGVwb3QvZ29vZ2xlMy90aGlyZF9wYXJ0eS9jcm9zc3Rvb2wvdjE4L3N0YWJs
ZS93cmFwcGVycy9iaW4vY2xhbmcKI0NGTEFHUz0gLURDT05GSUdfQ0NfU1RBQ0tQUk9URUNUT1Ig
LVF1bnVzZWQtYXJndW1lbnRzIC1XYWxsIC1XdW5kZWYgLVdzdHJpY3QtcHJvdG90eXBlcyAtV25v
LXRyaWdyYXBocyAtZm5vLXN0cmljdC1hbGlhc2luZyAtZm5vLWNvbW1vbiAtZnNob3J0LXdjaGFy
IC1XZXJyb3ItaW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb24gLVduby1mb3JtYXQtc2VjdXJp
dHkgLXN0ZD1nbnU4OSAtLXRhcmdldD14ODZfNjQtZ3J0ZXY0LWxpbnV4LWdudSAtLWdjYy10b29s
Y2hhaW49L3Vzci9sb2NhbC9nb29nbGUvaG9tZS9lZHVtYXpldC9naXQvcmViYXNlOTAwLmdpdC9n
YnVpbGQtb2JqL29ial94ODZfNjRfc21wLWJmOTdhZDhlOWQ4YzE2ZGYzNzkzZmUzYWI3Y2E0MjI1
ZTEyMjU1ZGUvd3JhcHBlcnMvMTgteDg2LWNsYW5nIC1uby1pbnRlZ3JhdGVkLWFzIC1mbm8tUElF
IC1tbm8tc3NlIC1tbm8tbW14IC1tbm8tc3NlMiAtbW5vLTNkbm93IC1tbm8tYXZ4IC1tNjQgLW1u
by04MDM4NyAtbXN0YWNrLWFsaWdubWVudD04IC1tdHVuZT1nZW5lcmljIC1tbm8tcmVkLXpvbmUg
LW1jbW9kZWw9a2VybmVsIC1mdW5pdC1hdC1hLXRpbWUgLURDT05GSUdfQVNfQ0ZJPTEgLURDT05G
SUdfQVNfQ0ZJX1NJR05BTF9GUkFNRT0xIC1EQ09ORklHX0FTX0NGSV9TRUNUSU9OUz0xIC1EQ09O
RklHX0FTX0ZYU0FWRVE9MSAtRENPTkZJR19BU19TU1NFMz0xIC1EQ09ORklHX0FTX0NSQzMyPTEg
LURDT05GSUdfQVNfQVZYPTEgLURDT05GSUdfQVNfQVZYMj0xIC1EQ09ORklHX0FTX1NIQTFfTkk9
MSAtRENPTkZJR19BU19TSEEyNTZfTkk9MSAtcGlwZSAtV25vLXNpZ24tY29tcGFyZSAtZm5vLWFz
eW5jaHJvbm91cy11bndpbmQtdGFibGVzIC1tcmV0cG9saW5lLWV4dGVybmFsLXRodW5rIC1EUkVU
UE9MSU5FIC1mbm8tZGVsZXRlLW51bGwtcG9pbnRlci1jaGVja3MgLVduby1pbnQtaW4tYm9vbC1j
b250ZXh0IC1PMiAtLXBhcmFtPWFsbG93LXN0b3JlLWRhdGEtcmFjZXM9MCAtRENDX0hBVkVfQVNN
X0dPVE8gLVdmcmFtZS1sYXJnZXItdGhhbj0yMDQ4IC1mc3RhY2stcHJvdGVjdG9yLXN0cm9uZyAt
V25vLXVudXNlZC12YXJpYWJsZSAtV25vLWZvcm1hdC1pbnZhbGlkLXNwZWNpZmllciAtV25vLWdu
dSAtV25vLWFkZHJlc3Mtb2YtcGFja2VkLW1lbWJlciAtV25vLXRhdXRvbG9naWNhbC1jb21wYXJl
IC1Xbm8tdW5uZWVkZWQtaW50ZXJuYWwtZGVjbGFyYXRpb24gLW1uby1nbG9iYWwtbWVyZ2UgLWZu
by1vbWl0LWZyYW1lLXBvaW50ZXIgLWZuby1vcHRpbWl6ZS1zaWJsaW5nLWNhbGxzIC1nICAtbWZl
bnRyeSAtRENDX1VTSU5HX0ZFTlRSWSAtV2RlY2xhcmF0aW9uLWFmdGVyLXN0YXRlbWVudCAtV25v
LXBvaW50ZXItc2lnbiAtZm5vLXN0cmljdC1vdmVyZmxvdyAtZm5vLW1lcmdlLWFsbC1jb25zdGFu
dHMgLWZuby1zdGFjay1jaGVjayAtV2Vycm9yPWltcGxpY2l0LWludCAtV2Vycm9yPXN0cmljdC1w
cm90b3R5cGVzIC1XZXJyb3I9ZGF0ZS10aW1lIC1XZXJyb3I9aW5jb21wYXRpYmxlLXBvaW50ZXIt
dHlwZXMgLVduby1pbml0aWFsaXplci1vdmVycmlkZXMgLVduby11bnVzZWQtdmFsdWUgLVduby1m
b3JtYXQgLVduby1zaWduLWNvbXBhcmUgLVduby1mb3JtYXQtemVyby1sZW5ndGggLVduby11bmlu
aXRpYWxpemVkIC1XZXJyb3IgLWZmcmVlc3RhbmRpbmcgLVduby1taXNsZWFkaW5nLWluZGVudGF0
aW9uIApDRkxBR1M9IC1EQ09ORklHX0NDX1NUQUNLUFJPVEVDVE9SIC1RdW51c2VkLWFyZ3VtZW50
cyAgLWZuby1jb21tb24gLWZzaG9ydC13Y2hhciAtc3RkPWdudTg5IC0tdGFyZ2V0PXg4Nl82NC1n
cnRldjQtbGludXgtZ251IC0tZ2NjLXRvb2xjaGFpbj0vdXNyL2xvY2FsL2dvb2dsZS9ob21lL2Vk
dW1hemV0L2dpdC9yZWJhc2U5MDAuZ2l0L2didWlsZC1vYmovb2JqX3g4Nl82NF9zbXAtYmY5N2Fk
OGU5ZDhjMTZkZjM3OTNmZTNhYjdjYTQyMjVlMTIyNTVkZS93cmFwcGVycy8xOC14ODYtY2xhbmcg
LW5vLWludGVncmF0ZWQtYXMgLWZuby1QSUUgLW1uby1zc2UgLW1uby1tbXggLW1uby1zc2UyIC1t
bm8tM2Rub3cgLW1uby1hdnggLW02NCAtbW5vLTgwMzg3ICAtbW5vLXJlZC16b25lIC1tY21vZGVs
PWtlcm5lbCAtZnVuaXQtYXQtYS10aW1lIC1EQ09ORklHX0FTX0NGST0xIC1EQ09ORklHX0FTX0NG
SV9TSUdOQUxfRlJBTUU9MSAtRENPTkZJR19BU19DRklfU0VDVElPTlM9MSAtRENPTkZJR19BU19G
WFNBVkVRPTEgLURDT05GSUdfQVNfU1NTRTM9MSAtRENPTkZJR19BU19DUkMzMj0xIC1EQ09ORklH
X0FTX0FWWD0xIC1EQ09ORklHX0FTX0FWWDI9MSAtRENPTkZJR19BU19TSEExX05JPTEgLURDT05G
SUdfQVNfU0hBMjU2X05JPTEgLXBpcGUgIC1mbm8tYXN5bmNocm9ub3VzLXVud2luZC10YWJsZXMg
IC1mbm8tZGVsZXRlLW51bGwtcG9pbnRlci1jaGVja3MgIC1PMiAtLXBhcmFtPWFsbG93LXN0b3Jl
LWRhdGEtcmFjZXM9MCAtRENDX0hBVkVfQVNNX0dPVE8gLVdmcmFtZS1sYXJnZXItdGhhbj0yMDQ4
ICAtV25vLXVudXNlZC12YXJpYWJsZSAtV25vLWZvcm1hdC1pbnZhbGlkLXNwZWNpZmllciAtV25v
LWdudSAtV25vLWFkZHJlc3Mtb2YtcGFja2VkLW1lbWJlciAtV25vLXRhdXRvbG9naWNhbC1jb21w
YXJlIC1Xbm8tdW5uZWVkZWQtaW50ZXJuYWwtZGVjbGFyYXRpb24gLW1uby1nbG9iYWwtbWVyZ2Ug
ICAtZyAgLW1mZW50cnkgLURDQ19VU0lOR19GRU5UUlkgLVdkZWNsYXJhdGlvbi1hZnRlci1zdGF0
ZW1lbnQgLVduby1wb2ludGVyLXNpZ24gLWZuby1zdHJpY3Qtb3ZlcmZsb3cgLWZuby1tZXJnZS1h
bGwtY29uc3RhbnRzIC1mbm8tc3RhY2stY2hlY2sgLVdlcnJvcj1pbXBsaWNpdC1pbnQgLVdlcnJv
cj1zdHJpY3QtcHJvdG90eXBlcyAtV2Vycm9yPWRhdGUtdGltZSAtV2Vycm9yPWluY29tcGF0aWJs
ZS1wb2ludGVyLXR5cGVzIC1Xbm8taW5pdGlhbGl6ZXItb3ZlcnJpZGVzIC1Xbm8tdW51c2VkLXZh
bHVlIC1Xbm8tZm9ybWF0IC1Xbm8tc2lnbi1jb21wYXJlIC1Xbm8tZm9ybWF0LXplcm8tbGVuZ3Ro
IC1Xbm8tdW5pbml0aWFsaXplZCAtV2Vycm9yIC1mZnJlZXN0YW5kaW5nIC1Xbm8tbWlzbGVhZGlu
Zy1pbmRlbnRhdGlvbiAKCmFsbCA6IGNsYW5nLWJpdGZpZWxkIGdjYy1iaXRmaWVsZCBjbGFuZy1i
aXRmaWVsZC5zIGdjYy1iaXRmaWVsZC5zIGNsYW5nLWJpdGZpZWxkLXdvcmQKCmNsYW5nLWJpdGZp
ZWxkLm8gOiBiaXRmaWVsZC5jCgkkKENMQU5HKSAkKENGTEFHUykgLWMgLW8gY2xhbmctYml0Zmll
bGQubyBiaXRmaWVsZC5jCgpjbGFuZy1iaXRmaWVsZC5zIDogYml0ZmllbGQuYwoJJChDTEFORykg
JChDRkxBR1MpIC1TIC1vIGNsYW5nLWJpdGZpZWxkLnMgYml0ZmllbGQuYwoKY2xhbmctY2xlYXIt
d29yZC5vIDogY2xlYXIuYwoJJChDTEFORykgJChDRkxBR1MpIC1EV09SRCAtYyAtbyBjbGFuZy1j
bGVhci13b3JkLm8gY2xlYXIuYwoKY2xhbmctY2xlYXIubyA6IGNsZWFyLmMKCSQoQ0xBTkcpICQo
Q0ZMQUdTKSAgLWMgLW8gY2xhbmctY2xlYXIubyBjbGVhci5jCgpjbGFuZy1iaXRmaWVsZDogY2xh
bmctYml0ZmllbGQubyBjbGFuZy1jbGVhci5vIGdjYy1jbGVhci5vCgkkKENMQU5HKSAtbyBjbGFu
Zy1iaXRmaWVsZCBjbGFuZy1iaXRmaWVsZC5vIGNsYW5nLWNsZWFyLm8KCmNsYW5nLWJpdGZpZWxk
LXdvcmQ6IGNsYW5nLWJpdGZpZWxkLm8gY2xhbmctY2xlYXItd29yZC5vIAoJJChDTEFORykgLW8g
Y2xhbmctYml0ZmllbGQtd29yZCBjbGFuZy1iaXRmaWVsZC5vIGNsYW5nLWNsZWFyLXdvcmQubwoK
CmdjYy1iaXRmaWVsZC5zIDogYml0ZmllbGQuYwoJZ2NjIC1PMiAtZyAtUyAtbyBnY2MtYml0Zmll
bGQucyBiaXRmaWVsZC5jCgpnY2MtYml0ZmllbGQubyA6IGJpdGZpZWxkLmMKCWdjYyAtTzIgLWcg
LWMgLW8gZ2NjLWJpdGZpZWxkLm8gYml0ZmllbGQuYwoKZ2NjLWNsZWFyLm8gOiBjbGVhci5jCgln
Y2MgLU8yIC1nIC1jIC1vIGdjYy1jbGVhci5vIGNsZWFyLmMKCmdjYy1iaXRmaWVsZDogZ2NjLWJp
dGZpZWxkLm8gZ2NjLWNsZWFyLm8KCWdjYyAtTzIgLWcgLW8gZ2NjLWJpdGZpZWxkIGdjYy1iaXRm
aWVsZC5vIGdjYy1jbGVhci5vCgpjbGVhbjoKCXJtIC1mIGNsYW5nLWJpdGZpZWxkLm8gY2xhbmct
Y2xlYXIubyBjbGFuZy1iaXRmaWVsZCBnY2MtYml0ZmllbGQK
--000000000000d6397705a5001477
Content-Type: application/octet-stream; name="bitfield.h"
Content-Disposition: attachment; filename="bitfield.h"
Content-Transfer-Encoding: base64
Content-ID: <f_k9vr9zf82>
X-Attachment-Id: f_k9vr9zf82

dHlwZWRlZiBzdHJ1Y3QgYml0X2ZpZWxkcyB7CiB1bnNpZ25lZCBjaGFyIGIxOjE7CiB1bnNpZ25l
ZCBjaGFyIF9wYWQxOjc7CiB1bnNpZ25lZCBjaGFyIGIyOjE7CiB1bnNpZ25lZCBjaGFyIF9wYWQy
Ojc7CiB1bnNpZ25lZCBjaGFyIGIzOjE7CiB1bnNpZ25lZCBjaGFyIF9wYWQzOjc7CiB1bnNpZ25l
ZCBjaGFyIGI0OjE7CiB1bnNpZ25lZCBjaGFyIF9wYWQ0Ojc7CiB1bnNpZ25lZCBpbnQgd29yZDE7
CgogdW5zaWduZWQgY2hhciBiNToxOwogdW5zaWduZWQgY2hhciBfcGFkNTo3OwogdW5zaWduZWQg
Y2hhciBiNjoxOwogdW5zaWduZWQgY2hhciBfcGFkNjo3OwogdW5zaWduZWQgY2hhciBiNzoxOwog
dW5zaWduZWQgY2hhciBfcGFkNzo3OwogdW5zaWduZWQgY2hhciBiODoxOwogdW5zaWduZWQgY2hh
ciBfcGFkODo3OwogdW5zaWduZWQgaW50IHdvcmQyOwoKIHVuc2lnbmVkIGxvbmcgbGxbNF07CiB1
bnNpZ25lZCBjaGFyIGI5OjE7CiB1bnNpZ25lZCBjaGFyIF9wYWQ5Ojc7CiB1bnNpZ25lZCBjaGFy
IGY7Cn0gYml0X2ZpZWxkc190OwoKdm9pZCBjbGVhcl9iMShiaXRfZmllbGRzX3QgKnB0cik7Cg==
--000000000000d6397705a5001477--
