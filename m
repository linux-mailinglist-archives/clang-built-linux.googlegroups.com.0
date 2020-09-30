Return-Path: <clang-built-linux+bncBDY3NC743AGBBHE72P5QKGQE432WCMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id D123E27F15D
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 20:34:05 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id h8sf1449526plt.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 11:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601490844; cv=pass;
        d=google.com; s=arc-20160816;
        b=JSvyCEMzJbdwb0dXzoqYbZZRjCvIWaYn1PdKCljB4iigZ7ClyEEUxRzjUawBFWzhbW
         bQFvdkGzcc4KUfEX/uLsOFDTvsbJeV0nT8S9YIpcQlMAXROywj38oiOubN5kfcYrxPA5
         gypmGGHI0Y1AjXoBv4b04Xe2MZQavEHvosIV0idPJLo11qwgy336/wAJ9SV4GBpWPxrN
         fSbi/unuhMIQ1p1zqfmQl39fsH5WKBdhIftBmQjvWfPGt9ttsk/nFFscZWkWR3HvQSBB
         8XbySnYKDNU1okrNL9H7PsirsT0G65watMC8eklHEu2Sk3m2xhesI+/YDkiOSeMKne9s
         R0BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=5LwBqJvOp7+A+MQ7GDGQOLuE5qjKayQWVUgH1VP5jk0=;
        b=RxxuGrU6RrpyllUjmfQqr0KncIARxFkrN9bBtTELc9ZSc3LqASZ9YkFAecufvgly91
         2dLIl3f12kgUXIxhiCfAu0EHOsPdBEJyVtd8Y1Zs3GZ/BslkB7qHTpt8HaJ99Sj5x5Xi
         QrqbHxKpNxV9WLIcDNTGgKdoOdFP70qrD2j6jghuGrA+EICse6zuDvVlvvHhwChwjnhZ
         r35/0h/fsn1MwlL0eO0M4TNVXUT6ggbB7Zsa7QxYgxyFCox45WCk7pA33RlMG5HTycnd
         vBlEv0bpHaAxadqpJs/qn07eWUAApGARF3XMaftGnYjKjKplRYxOfEKnOVeYwmYXwYG3
         cprA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.102 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5LwBqJvOp7+A+MQ7GDGQOLuE5qjKayQWVUgH1VP5jk0=;
        b=X3fC0ufQgbmxSSGLHW2uCcNGsn8T5fl932AvlAApd9zqxs6fOU5R9YZ4/v41AahYFP
         +ZEJ2QmndMQl+3MiIFNnkGC7qxMLZelehuLyBXzCy69nSf32ZZMP5EQvOJpiLxSiZUP+
         5l8mvyC4QncFCrY9bw0l6yEPkFuIFVvcC5zSxy+LB1aVW+Dc9TDoQV7y+zDZwf0dc/wB
         eHnYiDhJ/9whLrEwLM4FJQvlM9rZTEJRpizECIrrdTkftOJC4pluDaUn04mW1DUds14T
         zdp3EbqNIQcsu/u06tqO+ny4DQfsK+X66on8z3ktlWDMml3QlU1AfVpobyJvOW325WrC
         OAOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LwBqJvOp7+A+MQ7GDGQOLuE5qjKayQWVUgH1VP5jk0=;
        b=Mh3JwcYbhW8bYuP6usX2BEA+jsmNoL4bOjVxFeJPaCAmmWTEooWqyAqJidZVGthx4G
         G5tnatbc3vwoP/zW+Gp6PavEKMGDSkQpE38mkYpygy5+F4z9A/VC5owxZRi+QpSoa9Ku
         AjNKprr0Spm23ZaupCc2wTWtHuA7Zt29J6/Wwqc3dlXX70cdacJpPZSLOzEkh12P4XGW
         iR1SQU97+A5Pb7XLYsg/dUydVDuJxZKFwdq7edz2zA4wLI9yt97nOIqodxd/o29ifMeT
         uvqylv8f2F5GwPZM5LF2WXzwC0Ts4ZFByrlRIMB26ZGxIHQKM0DnE2iEr1Rq4mYTHGW9
         npCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302uY5NxEGflUnuE6iK/Q/4sON++hNf+Gip6ppLF6OUSvl/jB8x
	wdgIHB5wcg9QlOjsQnmpEm8=
X-Google-Smtp-Source: ABdhPJyz+eiy9PCyqX2WWy/TSrPUc0jzOhRAtOJzkZPIx820h1B9AX7TKkiTQxjLbZcowwZKXDeg5Q==
X-Received: by 2002:a63:f345:: with SMTP id t5mr3139381pgj.147.1601490844542;
        Wed, 30 Sep 2020 11:34:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c3c2:: with SMTP id j2ls1392423plj.7.gmail; Wed, 30
 Sep 2020 11:34:04 -0700 (PDT)
X-Received: by 2002:a17:90a:b944:: with SMTP id f4mr3758830pjw.127.1601490843930;
        Wed, 30 Sep 2020 11:34:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601490843; cv=none;
        d=google.com; s=arc-20160816;
        b=V3kSemOD4TndRikV84w18uRwlZ3Jof4zWO42SYatAjQEXdNg/w1d3nkRDMltDarC3K
         kR6BBuQZGW1Uk0im62CdmKS3aO4AELh7imDniakSXqy9riDbkYZ/txYyCI7g6kq5cK8S
         HjK2XT2QeA8i/3RxlHbJqS/HeweDkky77tbFAo0i8tQdDqaeCy7i+qeLwdK01WjaD7IR
         wLv/oFYOfNnUIQCm04QVwRfQDLXx129ZUEjDvNntu9+iffLOW7DLOBOc7hLwCSVsfKd6
         DqpJNWty68oS1oCpBMk7FHZcB6wI5ischIBK4+exjN3nfPxXOzVFr9X8XKfj5xFr+Xug
         bV+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id;
        bh=LUQu1W1+t8sIxyjci59k0WpFN9PGkVACWtVkk8H2gIc=;
        b=Ot0VpYqA5V2vSAxs7uAZRdPb/XyLJxkqrIgzx25pccSrv3UsSZryqVMxC0KGJ1WgNg
         BfCl1sNVBRAX8QoOflo+ZoW9hK5a98JGa3LSZUb6bfZXboO2ha1U66+W9QDFgnrcrTPT
         b6X4ZiZF5xTl2MssvB9W9FftQc11kkoGj38WH07jmduo0hwrxFgzTvmbjt/mLMLyV+2Q
         OgZci+y1Lk6C2fQEQAtf5AwEz8uxDBHA9LXqFgXRCN9j/j8OVWvSSce8xArA2JbOI4iy
         nGVE4GzTY+hEjOL7uoIQUIpHkNzepn38CR0boPip5J2ks9+Tq71iRjF/niQrgkkNTq5u
         Oo1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.102 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0102.hostedemail.com. [216.40.44.102])
        by gmr-mx.google.com with ESMTPS id w136si247146pff.3.2020.09.30.11.34.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 11:34:03 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.102 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.102;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id D49511803009B;
	Wed, 30 Sep 2020 18:34:02 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:1:41:355:379:599:871:960:967:973:982:988:989:1000:1260:1313:1314:1345:1359:1437:1516:1518:1543:1575:1594:1711:1730:1747:1764:1777:1792:1801:2194:2199:2393:2525:2561:2564:2682:2685:2691:2859:2892:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4384:4605:5007:6506:6747:6748:7281:8957:9025:10004:10394:10400:10848:11026:11232:11473:11604:11658:11914:12043:12295:12296:12297:12438:12555:12740:12895:12986:13161:13229:13439:13548:14181:14659:14721:21080:21433:21451:21627:21740:21789:21972:30029:30030:30054:30075:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: low83_630953527195
X-Filterd-Recvd-Size: 13384
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Wed, 30 Sep 2020 18:34:01 +0000 (UTC)
Message-ID: <0e582a7f5144a33f465978d97701f9b3dcc377f3.camel@perches.com>
Subject: Re: [PATCH] compiler.h: avoid escaped section names
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar
	 <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Luc Van Oostenryck
 <luc.vanoostenryck@gmail.com>, Nathan Chancellor
 <natechancellor@gmail.com>,  linux-sparse@vger.kernel.org, LKML
 <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>, Linus Torvalds
 <torvalds@linux-foundation.org>
Date: Wed, 30 Sep 2020 11:33:59 -0700
In-Reply-To: <ffe0224b2dc88e091d4d3bb32ee073ffc0585882.camel@perches.com>
References: <20200929194318.548707-1-ndesaulniers@google.com>
	 <20200929200801.GA2668747@rani.riverdale.lan>
	 <CAKwvOdm=H3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q@mail.gmail.com>
	 <ffe0224b2dc88e091d4d3bb32ee073ffc0585882.camel@perches.com>
Content-Type: multipart/mixed; boundary="=-aBohwTz58WA21h5mfNas"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.102 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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


--=-aBohwTz58WA21h5mfNas
Content-Type: text/plain; charset="UTF-8"

On Wed, 2020-09-30 at 08:40 -0700, Joe Perches wrote:
> On Tue, 2020-09-29 at 13:25 -0700, Nick Desaulniers wrote:
> > And I don't remember what ever happened to Joe's script for treewide
> > conversion of __section.
> 
> Nor do I but here (attached) is the script.
> 
> My recollection is there was some problem with mscros
> with ## concatenation in some converted uses.

I believe I have it sorted now and I've attached
a new version of the script.

It runs against -next (or any other tree) and
produces a single commit.

It converts all the various uses of
	__attribute__((section(<foo>)))
to
	__section("<foo>")

changes the various macros with token pasting uses
I believe appropriately as well.

Please give it a spin.

There were 4 problems as below.

With these 4 items fixed, the build works (seems to at least)

1:  compiler_attributes.h needed to unquote the __section__(#S)
    the old automated patch didn't apply as the file had changed

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attri>
index ea7b756b1c8f..b6fef9033c0b 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -254,7 +254,7 @@
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#i>
  * clang: https://clang.llvm.org/docs/AttributeReference.html#section-declspec>
  */
-#define __section(S)                    __attribute__((__section__(#S)))
+#define __section(section)              __attribute__((__section__(section)))

2:  The script needed to use different token pasting for
    __section(foo##bar##baz)

    The script converted this to
	__section("foo" ## bar ## "baz")
    instead this needed to be
	__section("foo" #bar "baz")

3:  scripts/mod/modpost.c needed quoting of its internal __section uses:

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 69341b36f271..f882ce0d9327 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -2254,7 +2254,7 @@ static void add_header(struct buffer *b, struct module *mod)
        buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
        buf_printf(b, "\n");
        buf_printf(b, "__visible struct module __this_module\n");
-       buf_printf(b, "__section(.gnu.linkonce.this_module) = {\n");
+       buf_printf(b, "__section(\".gnu.linkonce.this_module\") = {\n");
        buf_printf(b, "\t.name = KBUILD_MODNAME,\n");
        if (mod->has_init)
                buf_printf(b, "\t.init = init_module,\n");
@@ -2308,7 +2308,7 @@ static int add_versions(struct buffer *b, struct module *mod)
 
        buf_printf(b, "\n");
        buf_printf(b, "static const struct modversion_info ____versions[]\n");
-       buf_printf(b, "__used __section(__versions) = {\n");
+       buf_printf(b, "__used __section(\"__versions\") = {\n");

4: tools/ was excluded, but now needs conversion

 tools/include/linux/objtool.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/include/linux/objtool.h b/tools/include/linux/objtool.h
index ab82c793c897..577f51436cf9 100644
--- a/tools/include/linux/objtool.h
+++ b/tools/include/linux/objtool.h
@@ -60,7 +60,7 @@ struct unwind_hint {
  * For more information, see tools/objtool/Documentation/stack-validation.txt.
  */
 #define STACK_FRAME_NON_STANDARD(func) \
-	static void __used __section(.discard.func_stack_frame_non_standard) \
+	static void __used __section(".discard.func_stack_frame_non_standard") \
 		*__func_stack_frame_non_standard_##func = func
 
 #else /* __ASSEMBLY__ */

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0e582a7f5144a33f465978d97701f9b3dcc377f3.camel%40perches.com.

--=-aBohwTz58WA21h5mfNas
Content-Type: application/x-perl; name="convert_section.pl"
Content-Disposition: attachment; filename="convert_section.pl"
Content-Transfer-Encoding: base64

IyEvdXNyL2Jpbi9lbnYgcGVybAoKIyBjb252ZXJ0IGxpbnV4LWtlcm5lbCBfX3NlY3Rpb24gdXNl
cyBmcm9tIHVucXVvdGVkIHN0cmluZyB0byBxdW90ZWQgc3RyaW5nCiMgY29udmVydCBfX2F0dHJp
YnV0ZV9fKChzZWN0aW9uKCJmb28iKSkpIHRvIF9fc2VjdGlvbigiZm9vIikKIyBjb252ZXJ0IF9f
YXR0cmlidXRlX18oKGZvbywgc2VjdGlvbj0oImJhciIpLCBiYXopKQojICAgICAgdG8gX19zZWN0
aW9uKCJiYXIiKSBhdHRyaWJ1dGUoKGZvbywgYmF6KSkKIyBjb252ZXJ0IF9fYXR0cmlidXRlX18K
CnVzZSBzdHJpY3Q7CgojIHBhdGNoIGNvbXBpbGVyX2F0dHJpYnV0ZXMuaCB0byByZW1vdmUgcXVv
dGluZyBvZiBzZWN0aW9uIG5hbWUKCm15ICRyZXN1bHQgPSBgcGF0Y2ggLXAxIDw8IkVPRiIKIGlu
Y2x1ZGUvbGludXgvY29tcGlsZXJfYXR0cmlidXRlcy5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9jb21waWxlcl9hdHRyaWJ1dGVzLmggYi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX2F0dHJpYnV0
ZXMuaAppbmRleCBlYTdiNzU2YjFjOGYuLmIyYTNmNGY2NDFhNyAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9saW51eC9jb21waWxlcl9hdHRyaWJ1dGVzLmgKKysrIGIvaW5jbHVkZS9saW51eC9jb21waWxl
cl9hdHRyaWJ1dGVzLmgKQEAgLTI1NCw3ICsyNTQsNyBAQAogICogICBnY2M6IGh0dHBzOi8vZ2Nj
LmdudS5vcmcvb25saW5lZG9jcy9nY2MvQ29tbW9uLVZhcmlhYmxlLUF0dHJpYnV0ZXMuaHRtbCNp
bmRleC1zZWN0aW9uLXZhcmlhYmxlLWF0dHJpYnV0ZQogICogY2xhbmc6IGh0dHBzOi8vY2xhbmcu
bGx2bS5vcmcvZG9jcy9BdHRyaWJ1dGVSZWZlcmVuY2UuaHRtbCNzZWN0aW9uLWRlY2xzcGVjLWFs
bG9jYXRlCiAgKi8KLSNkZWZpbmUgX19zZWN0aW9uKFMpICAgICAgICAgICAgICAgICAgICBfX2F0
dHJpYnV0ZV9fKChfX3NlY3Rpb25fXygjUykpKQorI2RlZmluZSBfX3NlY3Rpb24oc2VjdGlvbikg
ICAgICAgICAgICAgIF9fYXR0cmlidXRlX18oKF9fc2VjdGlvbl9fKHNlY3Rpb24pKSkKIAogLyoK
ICAqICAgZ2NjOiBodHRwczovL2djYy5nbnUub3JnL29ubGluZWRvY3MvZ2NjL0NvbW1vbi1GdW5j
dGlvbi1BdHRyaWJ1dGVzLmh0bWwjaW5kZXgtdW51c2VkLWZ1bmN0aW9uLWF0dHJpYnV0ZQpFT0Zg
OwoKIyBwYXRjaCBzY3JpcHRzL21vZC9tb2Rwb3N0LmMgdG8gYWRkIHF1b3Rpbmcgb2Ygc2VjdGlv
biBuYW1lCgpteSAkcmVzdWx0ID0gYHBhdGNoIC1wMSA8PCJFT0YiCiBzY3JpcHRzL21vZC9tb2Rw
b3N0LmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9tb2QvbW9kcG9zdC5jIGIvc2NyaXB0cy9tb2Qv
bW9kcG9zdC5jCmluZGV4IDY5MzQxYjM2ZjI3MS4uZjg4MmNlMGQ5MzI3IDEwMDY0NAotLS0gYS9z
Y3JpcHRzL21vZC9tb2Rwb3N0LmMKKysrIGIvc2NyaXB0cy9tb2QvbW9kcG9zdC5jCkBAIC0yMjU0
LDcgKzIyNTQsNyBAQCBzdGF0aWMgdm9pZCBhZGRfaGVhZGVyKHN0cnVjdCBidWZmZXIgKmIsIHN0
cnVjdCBtb2R1bGUgKm1vZCkKIAlidWZfcHJpbnRmKGIsICJNT0RVTEVfSU5GTyhuYW1lLCBLQlVJ
TERfTU9ETkFNRSk7XFxuIik7CiAJYnVmX3ByaW50ZihiLCAiXFxuIik7CiAJYnVmX3ByaW50Zihi
LCAiX192aXNpYmxlIHN0cnVjdCBtb2R1bGUgX190aGlzX21vZHVsZVxcbiIpOwotCWJ1Zl9wcmlu
dGYoYiwgIl9fc2VjdGlvbiguZ251LmxpbmtvbmNlLnRoaXNfbW9kdWxlKSA9IHtcXG4iKTsKKwli
dWZfcHJpbnRmKGIsICJfX3NlY3Rpb24oXFwiLmdudS5saW5rb25jZS50aGlzX21vZHVsZVxcIikg
PSB7XFxuIik7CiAJYnVmX3ByaW50ZihiLCAiXFx0Lm5hbWUgPSBLQlVJTERfTU9ETkFNRSxcXG4i
KTsKIAlpZiAobW9kLT5oYXNfaW5pdCkKIAkJYnVmX3ByaW50ZihiLCAiXFx0LmluaXQgPSBpbml0
X21vZHVsZSxcXG4iKTsKQEAgLTIzMDgsNyArMjMwOCw3IEBAIHN0YXRpYyBpbnQgYWRkX3ZlcnNp
b25zKHN0cnVjdCBidWZmZXIgKmIsIHN0cnVjdCBtb2R1bGUgKm1vZCkKIAogCWJ1Zl9wcmludGYo
YiwgIlxcbiIpOwogCWJ1Zl9wcmludGYoYiwgInN0YXRpYyBjb25zdCBzdHJ1Y3QgbW9kdmVyc2lv
bl9pbmZvIF9fX192ZXJzaW9uc1tdXFxuIik7Ci0JYnVmX3ByaW50ZihiLCAiX191c2VkIF9fc2Vj
dGlvbihfX3ZlcnNpb25zKSA9IHtcXG4iKTsKKwlidWZfcHJpbnRmKGIsICJfX3VzZWQgX19zZWN0
aW9uKFxcIl9fdmVyc2lvbnNcXCIpID0ge1xcbiIpOwogCiAJZm9yIChzID0gbW9kLT51bnJlczsg
czsgcyA9IHMtPm5leHQpIHsKIAkJaWYgKCFzLT5tb2R1bGUpCkVPRmA7CgojIEdldCB0aGUgbGlz
dCBvZiBmaWxlcyB0byBtb2RpZnkgKGNvbnRhaW5zIF9fc2VjdGlvbiBvciBfX2F0dHJpYnV0ZV9f
LipzZWN0aW9uCiMgKGlnbm9yZSBzY3JpcHRzLCB0b29scywgdWFwaSwgYW5kIGNvbXBpbGVyX2F0
dHJpYnV0ZXMuaCkKCm15ICRvdXRwdXQgPSBgZ2l0IGdyZXAgLS1uYW1lLW9ubHkgLVAgIig/Olxc
Yl9fc2VjdGlvblxcYlx8XFxiX19hdHRyaWJ1dGVfX1xcYi4qc2VjdGlvbikiIHwgZ3JlcCAtdlAg
J14oPzppbmNsdWRlL2xpbnV4L2NvbXBpbGVyX2F0dHJpYnV0ZXNcXC5ofHNjcmlwdHMvfHRvb2xz
L3wvdWFwaS8pJ2A7Cm15IEBmaWxlcyA9IHNwbGl0KCJcbiIsICRvdXRwdXQpOwojIEFkZCB0aGUg
b25seSBmaWxlIGluIHRvb2xzIHRoYXQgbmVlZHMgY29udmVyc2lvbgpwdXNoIChAZmlsZXMsICJ0
b29scy9pbmNsdWRlL2xpbnV4L29ianRvb2wuaCIpOwoKIyBNb2RpZnkgZWFjaCBwb3NzaWJsZSBm
aWxlCmZvcmVhY2ggKEBmaWxlcykgewogICAgY2hvbXA7CiAgICBteSAkZmlsZSA9ICRfOwoKICAg
ICMgcmVhZCB0aGUgb3JpZ2luYWwgZmlsZQogICAgb3BlbihGSCwgJzwnLCAkZmlsZSkgb3IgZGll
ICQhOwogICAgbXkgQGxpbmVzID0gPEZIPjsKICAgIGNsb3NlIEZIOwoKICAgICMgd3JpdGUgdGhl
IG1vZGlmaWVkIGZpbGUgbGluZSBieSBsaW5lCiAgICBvcGVuIChGSCwgJz4nLCAkZmlsZSkgb3Ig
ZGllICQhOwogICAgZm9yZWFjaCBteSAkbGluZSAoQGxpbmVzKSB7CgljaG9tcCAkbGluZTsKCW15
ICRuZXdsaW5lID0gJGxpbmU7CgoJIyBDb252ZXJ0IF9fc2VjdGlvbihmb28pIHRvIF9fc2VjdGlv
bigiZm9vIikKCSMgaWYgImZvbyIgdXNlcyBtdWx0aXBsZSB0b2tlbiBwYXN0aW5nLAoJIyAgIHBy
ZSBhbmQgcG9zdCB0b2tlbnMgcmVtb3ZlZCBhbmQgYSBzaW5nbGUgIyBpcyB1c2VkIHRoZW4gIiAi
IGFkZGVkCgkjICAgZS5nLjogIGZvbyAjIyBiYXIgIyMgYmF6IGJlY29tZXMgImZvbyIgI2JhciAi
YmF6IgoJaWYgKCRsaW5lID1+IG0vXGJfX3NlY3Rpb25ccypcKFxzKig/ISIpKFteXCldKylcKS8p
IHsKCSAgICBteSAkb2xkc2VjdGlvbiA9ICQxOwoJICAgIG15ICRuZXdzZWN0aW9uID0gJDE7Cgkg
ICAgaWYgKCRvbGRzZWN0aW9uID1+IC8oLiopIyMoLiopIyMoLiopLykgewoJCSRuZXdzZWN0aW9u
ID0gJyInIC4gdHJpbSgkMSkgLiAnIiAjJyAuIHRyaW0oJDIpIC4gJyAiJyAuIHRyaW0oJDMpIC4g
JyInOwoJICAgIH0gZWxzZSB7CgkJJG5ld3NlY3Rpb24gPSAnIicgLiB0cmltKCRvbGRzZWN0aW9u
KSAuICciJzsKCSAgICB9CgkgICAgJG5ld2xpbmUgPX4gcy9fX3NlY3Rpb25ccypcKFxzKlxRJG9s
ZHNlY3Rpb25cRVxzKlwpL19fc2VjdGlvbigkbmV3c2VjdGlvbikvOwoJfQoKCSMgY29udmVydCBf
X2F0dHJpYnV0ZV9fKChzZWN0aW9uKCJmb28iKSkpIHRvIF9fc2VjdGlvbigiZm9vIikKCSRuZXds
aW5lID1+IHMvXGJfX2F0dHJpYnV0ZV9fXHMqXChccypcKFxzKl8qc2VjdGlvbl8qXHMqXChccyoo
IlteIl0rIilccypcKVxzKlwpXHMqXCkvX19zZWN0aW9uKCQxKS87CgoJIyBjb252ZXJ0IF9fYXR0
cmlidXRlX18oKGZvbywgc2VjdGlvbj0oImJhciIpLCBiYXopKQoJIyB0byBfX3NlY3Rpb24oImJh
ciIpIGF0dHJpYnV0ZSgoZm9vLCBiYXopKQoJaWYgKCRuZXdsaW5lID1+IC8oXGJfX2F0dHJpYnV0
ZV9fXHMqXChccypcKChbXixfXSspPyhccyosP1xzKl8qc2VjdGlvbl8qXHMqXChccyooIlteIl0r
IilccypcKVxzKiw/XHMqKSguKilccypcKVxzKlwpKS8pIHsKCSAgICBteSAkc2VjdGlvbiA9ICQz
OwoJICAgIG15ICRjb21tYSA9ICIiOwoJICAgICRjb21tYSA9ICIsICIgaWYgKCRzZWN0aW9uID1+
IC9eXHMqLC8gJiYgJHNlY3Rpb24gPX4gLyxccyokLyk7CgkgICAgJG5ld2xpbmUgPX4gcy9cUSRz
ZWN0aW9uXEUvJGNvbW1hLzsKCSAgICAkc2VjdGlvbiA9fiBzL15bXiJdKi8vOwoJICAgICRzZWN0
aW9uID1+IHMvXigiW14iXSoiKS4qLyQxLzsKCSAgICAkbmV3bGluZSA9fiBzL1xiX19hdHRyaWJ1
dGVfXy9fX3NlY3Rpb24oJHNlY3Rpb24pIF9fYXR0cmlidXRlX18vOwoJfQoKCSMgaWYgdGhlIGxp
bmUgZW5kZWQgd2l0aCBhIGxpbmUgY29udGludWF0aW9uIFwsIHRyeSB0byBtb3ZlIHRoZQoJIyBj
b250aW51YXRpb24gdG8gdGhlIHNhbWUgbG9jYXRpb24gYnkgcmVtb3Zpbmcgb3IgYWRkaW5nIHRh
YnMKCWlmICgkbGluZSA9fiAvXFwkLykgewoJICAgIG15ICRvbGVuID0gbGVuZ3RoKGV4cGFuZF90
YWJzKCRsaW5lKSk7CgkgICAgbXkgJG5sZW4gPSBsZW5ndGgoZXhwYW5kX3RhYnMoJG5ld2xpbmUp
KTsKCSAgICBpZiAoJG5ld2xpbmUgPX4gL1x0XFwkLykgewoJCWlmICgkbmxlbiA+ICRvbGVuKSB7
CgkJICAgICRuZXdsaW5lID1+IHMvXHRcXCQvXFwvOwoJCX0gZWxzZSB7CgkJICAgIHdoaWxlICgk
bmxlbiA8ICRvbGVuKSB7CgkJCSRuZXdsaW5lID1+IHMvXFwkL1x0XFwvOwoJCQkkbmxlbiA9IGxl
bmd0aChleHBhbmRfdGFicygkbmV3bGluZSkpOwoJCSAgICB9CgkJfQoJICAgIH0KCX0KCXByaW50
IEZIICIkbmV3bGluZVxuIjsKICAgIH0KICAgIGNsb3NlIEZIOwp9CgojIEFuZCBnaXQgY29tbWl0
IHRoZSBjaGFuZ2VzCiRyZXN1bHQgPSBxeHtnaXQgY29tbWl0IC1hIC0tYXV0aG9yPSdKb2UgUGVy
Y2hlcyA8am9lXEBwZXJjaGVzLmNvbT4nIC1GLSA8PCJFT0YiCnRyZWV3aWRlOiBDb252ZXJ0IG1h
Y3JvIGFuZCB1c2VzIG9mIF9fc2VjdGlvbihmb28pIHRvIF9fc2VjdGlvbigiZm9vIikKClVzZSBh
IG1vcmUgZ2VuZXJpYyBmb3JtIGZvciBfX3NlY3Rpb24gdGhhdCByZXF1aXJlcyBxdW90ZXMgdG8g
YXZvaWQKY29tcGxpY2F0aW9ucyB3aXRoIGNsYW5nIGFuZCBnY2MgZGlmZmVyZW5jZXMuCgpSZW1v
dmUgdGhlIHF1b3RlIG9wZXJhdG9yICMgZnJvbSBjb21waWxlcl9hdHRyaWJ1dGVzLmggX19zZWN0
aW9uIG1hY3JvLgoKQ29udmVydCBhbGwgdW5xdW90ZWQgX19zZWN0aW9uKGZvbykgdXNlcyB0byBx
dW90ZWQgX19zZWN0aW9uKCJmb28iKS4KQWxzbyBjb252ZXJ0IF9fYXR0cmlidXRlX18oKHNlY3Rp
b24oImZvbyIpKSkgdXNlcyB0byBfX3NlY3Rpb24oImZvbyIpCmV2ZW4gaWYgdGhlIF9fYXR0cmli
dXRlX18gaGFzIG11bHRpcGxlIGxpc3QgZW50cnkgZm9ybXMuCgpTaWduZWQtb2ZmLWJ5OiBKb2Ug
UGVyY2hlcyA8am9lXEBwZXJjaGVzLmNvbT4KRU9GCn07CgojIHV0aWxpdHkgc3Vicm91dGluZXMK
c3ViIHRyaW0gewogICAgbXkgKCRzdHJpbmcpID0gQF87CiAgICAkc3RyaW5nID1+IHMvXlxzK3xc
cyskLy9nOwogICAgcmV0dXJuICRzdHJpbmc7Cn0KCnN1YiBleHBhbmRfdGFicyB7CiAgICBteSAo
JHN0cikgPSBAXzsKCiAgICBteSAkcmVzID0gJyc7CiAgICBteSAkbiA9IDA7CiAgICBmb3IgbXkg
JGMgKHNwbGl0KC8vLCAkc3RyKSkgewoJaWYgKCRjIGVxICJcdCIpIHsKCSAgICAkcmVzIC49ICcg
JzsKCSAgICAkbisrOwoJICAgIGZvciAoOyAoJG4gJSA4KSAhPSAwOyAkbisrKSB7CgkJJHJlcyAu
PSAnICc7CgkgICAgfQoJICAgIG5leHQ7Cgl9CgkkcmVzIC49ICRjOwoJJG4rKzsKICAgIH0KCiAg
ICByZXR1cm4gJHJlczsKfQo=


--=-aBohwTz58WA21h5mfNas--

