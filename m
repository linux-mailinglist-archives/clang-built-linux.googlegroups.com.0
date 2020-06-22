Return-Path: <clang-built-linux+bncBCS7XUWOUULBBHPXYT3QKGQEOTNAVOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 613AE20444F
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 01:15:42 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id n185sf12105818qkc.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 16:15:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592867741; cv=pass;
        d=google.com; s=arc-20160816;
        b=xgTRTqcE0I2ueMYydnP5Crez8Ur/24RSGv38GONzBC/G2qOUbk00eHeluWX2LsYaKY
         KlOpE3o7sNVhWL/RJoCMdP1rX1uLZNGqpxnDkD9K4blvE9GgVZCFshGrk9PYKRa3od7W
         try5K7Y/rOXi/5kxnO2yQT14oDMQ6GoLzttzlbZ9sPsxqzh5/w++GvDfaLsOlUQzaq7y
         WQjpWmVvDY6wnM43Q+XKKGR2LV/9qlFbUDmtHAgoROpvRluSXKbbYnr6fu6CqOTv0ZFI
         zyEvgBaogqePIKlt82j0VFS/hUkjW8bzou5F5uGadJDqI0+iS3bjTMeRvI1JCfZS4jc5
         LDug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=TEuDk2c+7daCwB1bdH+K9t9Y2QB/3gMVpnVQSFb/Hkk=;
        b=y0fC/Pf4UK2VomVIna7Rru4D3LNcTclH5EAtohiTAb8oCrqFSz1eW1mmZJO0ZD3OpC
         MGkkN/AvwN49BqWYbXE6rEFdoa2vGa/rn6F2rQM8MvX5jqpmv2X3GGa3AgfJGMU0Nyh7
         9IomhHfPSDyOEF42FnRcfYCScPrIUGUg7EbIwc1fS6BKqIrYThsWg7iA4eMOKecrzFWe
         JPc6WC6QWiCq5Xd2jvlLYHYaEmaS4YxrCtAa2TDuq6RhxZk8qdLe1X6jT0LdDpA8qguN
         aWi58XmH1HGc6iZeJ1P7wVLJHO34XI8R8dZT8Z8EDUA9gIsdIt7aPQWqWpU6UbirejFu
         pagg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GlEhc70t;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TEuDk2c+7daCwB1bdH+K9t9Y2QB/3gMVpnVQSFb/Hkk=;
        b=ccbg8GvDeXwYKG0wg2FByCUrbvkECxnM9QTu8th9R37JnxZhK7gdf6F/XDRoKOiVfJ
         IOIn9sEjH+qzCyZhe7kk2NDD2JfcFH1kUKq98QDnA/IOWX8N+gb6f4jl1lT1OLaBvweZ
         ByWkczvnRksvEV9+bZpR0uOg11s2zrb63H3Ur9GaKSO63MrgPwsW4jeF02EOCWu6pjjC
         3rngDKv41N7lIim5yKuomRpX6aH0L+dUeqOyj97juChy/hVTd3av91WSllHcUxztnqPS
         N7E9yoytF5YruBG+Ad3rO+5hrFkpFrOFsm7E6rqQfOel0yuu63pm3kGB8SeGb3jEk3qL
         FGUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TEuDk2c+7daCwB1bdH+K9t9Y2QB/3gMVpnVQSFb/Hkk=;
        b=XTx11oAAKKp53q+Vea5VE/C6PBXtly4EdnacZ8RDrF/Nz8b30sWxkcPElSzmzADndp
         xfGaNzloxZ8erh5TM7p+qec3U0xsv+eN6vtkO2z5hqvpDopD7FaP1/XBR+k8gvmoYztB
         ikoX3tWP+1uMfAAHOMge4FtGwYox58IOXfFCWAAL35Ds3cMBVX0rcXVJYcTH4FakW0Vq
         RBkNMgfAX2FC2si2kvVYjCH8dveIlGIVtq+qldw8QAb0vQP26Ke31XMKBKbezZkhfh37
         +vcZk+GMC6iqCnfgYI8ezNDftyznwpjPHF6UyHmV0wK0HVmrZ30Wggh5rHQKDIOh7YB7
         W87A==
X-Gm-Message-State: AOAM532UIcrftDq3tzWRMqbbVU4h0/w93TE2jRYpS9dLgBnDo1+YPlWO
	r/fIaIeaudWQLTSMG6THRuo=
X-Google-Smtp-Source: ABdhPJxLueTC3AWAnOQce1ukRwoCZMySLXBdcF2wDdhgsmvKvSuMXysR5fUEaMjV7SoX8OPW8kgG0A==
X-Received: by 2002:a37:a458:: with SMTP id n85mr733578qke.167.1592867741418;
        Mon, 22 Jun 2020 16:15:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3f53:: with SMTP id q19ls2468953qtf.5.gmail; Mon, 22 Jun
 2020 16:15:41 -0700 (PDT)
X-Received: by 2002:ac8:734c:: with SMTP id q12mr19105983qtp.178.1592867741010;
        Mon, 22 Jun 2020 16:15:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592867741; cv=none;
        d=google.com; s=arc-20160816;
        b=WJWrwcpcKio628vS9E0JkNwDi8J0cjVapRuAxI5thZ8z70/bzAaE/b1JXK/AcHlHmj
         ZCR0yg1w8a3zkiEQwWGPTWUVIhIz8/hFCGp5uRLElKpalasJ8ICuD78klMSsp/bri/SQ
         +0TWUZyRLFWYdIU3v/eFux/ObHiPEGfZxy/VIS5NZgucA9ff2mg5ln/6cLDYpAJOcugK
         EnkkYZ4c0mNRqw/tGEfHbY0GDmbNUyEp/vpIs/02LhKI6OH62Dxi6vFFQh5UOZGjxUrt
         eN2TLGCqro0pN//HnTjPCTcV1NbxRT5SA/RVQ7Gecq84eMAYVaMPbZ15pfUWbXrYRgvl
         OKcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=8ffW2wUqNPKCctA4KQ6FwdGe8r/TZEjq1PeDi/0NFK0=;
        b=ZWzbOQPXgS6agQqYR9S2qfwmirDncBFna8ca/CxvUQwpgw+0Grn44Xn4Di2K3gfwn8
         iCKfi0nr7NuyAOYR8L/4az7m7zbSzk+pdd9v92QjcKyDXYqoTTYbtf6iYl+rgW1TGvGr
         eyqqNUU+eQnMlfhxPrI2d+wruf1z36nwLm6rowwdjSmsVyI071weAvpUeSBY5u7rnjpw
         KprQseJPe5QNYLgpJEqLgW3ixa2wGCC1h/l6wvCwOq7CcYq+3S8o/6vlHKXWckuGNCkc
         +vm8grPpCw7yY2UoY83g6P7p2s1mUX3KKnCCoZDnorccqAL9YZPXk5yVfwSPJXFa67Qn
         LceA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GlEhc70t;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f23si703347qtm.4.2020.06.22.16.15.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 16:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x22so9139025pfn.3
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 16:15:40 -0700 (PDT)
X-Received: by 2002:a63:4c48:: with SMTP id m8mr15136063pgl.290.1592867740181;
        Mon, 22 Jun 2020 16:15:40 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id 6sm14829509pfi.170.2020.06.22.16.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 16:15:39 -0700 (PDT)
Date: Mon, 22 Jun 2020 16:15:36 -0700
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	"# 3.4.x" <stable@vger.kernel.org>, Jian Cai <jiancai@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] vmlinux.lds: consider .text.{hot|unlikely}.* part of
 .text too
Message-ID: <20200622231536.7jcshis5mdn3vr54@google.com>
References: <20200617210613.95432-1-ndesaulniers@google.com>
 <20200617212705.tq2q6bi446gydymo@google.com>
 <CAKwvOdniambW9_nVbDnd4A_+bdDdZMd2V1Q=Xw5EJYDGeh=eyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdniambW9_nVbDnd4A_+bdDdZMd2V1Q=Xw5EJYDGeh=eyQ@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GlEhc70t;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On 2020-06-22, Nick Desaulniers wrote:
>On Wed, Jun 17, 2020 at 2:27 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@goog=
le.com> wrote:
>>
>>
>> On 2020-06-17, Nick Desaulniers wrote:
>> >ld.bfd's internal linker script considers .text.hot AND .text.hot.* to
>> >be part of .text, as well as .text.unlikely and .text.unlikely.*.
>>
>> >ld.lld will produce .text.hot.*/.text.unlikely.* sections.
>>
>> Correction to this sentence. lld is not relevant here.
>>
>> -ffunction-sections combined with profile-guided optimization can
>> produce .text.hot.* .text.unlikely.* sections.  Newer clang may produce
>> .text.hot. .text.unlikely. (without suffix, but with a trailing dot)
>> when -fno-unique-section-names is specified, as an optimization to make
>> .strtab smaller.
>
>Then why was the bug report reporting https://reviews.llvm.org/D79600
>as the result of a bisection, if LLD is not relevant?  Was the
>bisection wrong?

https://reviews.llvm.org/D79600 is an LLVM codegen change, unrelated to LLD=
..
(As described in the patch, LLD's -z keep-text-section-prefix only
recognizes ".text.exit.*", not ".text.exit")

>The upstream report wasn't initially public, for no good reason.  So I
>didn't include it, but if we end up taking v1, this should have
>
>Link: https://bugs.chromium.org/p/chromium/issues/detail?id=3D1084760

Thanks for making it public.

>The kernel doesn't use -fno-unique-section-names; is that another flag
>that's added by CrOS' compiler wrapper?
>https://source.chromium.org/chromiumos/chromiumos/codesearch/+/master:src/=
third_party/toolchain-utils/compiler_wrapper/config.go;l=3D110
>Looks like no.  It doesn't use `-fno-unique-section-names` or
>`-ffunction-sections`.

-fno-unique-section-names is a very rare option. It is not supported by GCC=
 (https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D95095 ).
clang users use it very rarely, probably because not many people care
about additional strings taken by section names ".text.hot.a" ".text.hot.b"=
 ".text.hot.c"
in the string table ".strtab" (clang since some point of 2018 uses
.strtab instead of .shstrtab which enables more string sharing).

>
>

>
>>
>> We've already seen that GCC can place main in .text.startup without
>> -ffunction-sections. There may be other non -ffunction-sections cases
>> for .text.hot.* or .text.unlikely.*. So it is definitely a good idea to
>> be more specific even if we don't care about -ffunction-sections for
>> now.
>>
>> >Make sure to group these together.  Otherwise these orphan sections may
>> >be placed outside of the the _stext/_etext boundaries.
>> >
>> >Cc: stable@vger.kernel.org
>> >Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3Dadd44f8d5c5c05e08b11e033127a744d61c26aee
>> >Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3D1de778ed23ce7492c523d5850c6c6dbb34152655
>> >Link: https://reviews.llvm.org/D79600
>> >Reported-by: Jian Cai <jiancai@google.com>
>> >Debugged-by: Luis Lozano <llozano@google.com>
>> >Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
>> >Tested-by: Luis Lozano <llozano@google.com>
>> >Tested-by: Manoj Gupta <manojgupta@google.com>
>> >Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> >---
>> > include/asm-generic/vmlinux.lds.h | 4 +++-
>> > 1 file changed, 3 insertions(+), 1 deletion(-)
>> >
>> >diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vm=
linux.lds.h
>> >index d7c7c7f36c4a..fe5aaef169e3 100644
>> >--- a/include/asm-generic/vmlinux.lds.h
>> >+++ b/include/asm-generic/vmlinux.lds.h
>> >@@ -560,7 +560,9 @@
>> >  */
>> > #define TEXT_TEXT                                                     =
\
>> >               ALIGN_FUNCTION();                                       =
\
>> >-              *(.text.hot TEXT_MAIN .text.fixup .text.unlikely)       =
\
>> >+              *(.text.hot .text.hot.*)                                =
\
>> >+              *(TEXT_MAIN .text.fixup)                                =
\
>> >+              *(.text.unlikely .text.unlikely.*)                      =
\
>> >               NOINSTR_TEXT                                            =
\
>> >               *(.text..refcount)                                      =
\
>> >               *(.ref.text)                                            =
\
>> >--
>> >2.27.0.290.gba653c62da-goog
>> >
>
>
>
>--
>Thanks,
>~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200622231536.7jcshis5mdn3vr54%40google.com.
