Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBZ5DULUQKGQEU3PVGCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id C29E4670B5
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 15:58:00 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id e18sf6926102qkl.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 06:58:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562939879; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZnU1vkBibDQAMqBEWxljH8BeEOAtSBTOKzgU98f74i29Q3MMWbtYDNUThOYjjOtsrj
         skWlQiNlIvBszT3jiaSLSrqurIfP+Vw0dMHhGDakW0tm9CPwgD00mlW9GomOCOwarjqS
         UmL7bc1ruCDBju8Ur7wCza1pYxtXDbC3A42M/+FpV6w7RqxshxBAnf9tXT6KoUq2h/oU
         nINwXrQozbzdd6/MXNWCj0m4rnMRLv5ECkTAz65rzkxjE3vb9oJgQqYgw7isvAaz32w3
         GKlAv7JmIjZf91QikoMupC2d9DqfNM+J6+oaAtMWA9wAwt7FcWV4cWwtFISZ+qq80wlO
         pEng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=s+SJ/bwNR5ufjSVpUs3QyeiUaUf9FueaU7VnE0OqT/c=;
        b=adp9aZhU2o7mSR97UrxdPNgKu/vUtRouTqeBgRSZEjUDGHyyy3ZWXnr9toNQ2fbKyn
         uggZoiaz2/MdOZ+wQu4HVAZvMmsrZTC3bUlNDtmK3T2LRbpRLjJMf8jz2z5QCTZgIm3Z
         UQd8YmnoKWqw7QdNLThbynh4eD2ok0x4G+LGVUhkZ/YxYZpBMe75GMoyFtbO+blXZlrZ
         7CMxgLSbWKfP9lJb2+muudlK7K9Y+YcexCyg57ZsuSPuXVTslff58cmkKQmTkmjTIj3Z
         Dp+TZbedxl+l/qVcKay6LzfW0QoSbnF6/McHLw2hXfFpviCzwSFw2ULGlnpXfjxAjgZO
         JPwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s+SJ/bwNR5ufjSVpUs3QyeiUaUf9FueaU7VnE0OqT/c=;
        b=o+iatiAwsX5AKZYvc+H9ED5eJqbCV4sQK+BSYglxQircxWMjsTwx6TmI1WRD48Scec
         us97D7rlIQYThmc1vJ6Ur2Xg5T/7pJQV/lgPQK8yuHpq3T24yo9CNTAOgxhPKD7mS19N
         BgJS1vgul3foEuPVZhlgiFtQxgaTVYovB4erkeSQJh7xdXpJE68HVnL9NpCXalkrKFqC
         V+uF+jf+OAvJsntFpIIFMj+gutzN0kX0c4PEyamCupU6uH0CwgnlotCiIcQYMPY+FmE7
         5YwiECTITq62da6R1rOKtr5bnqcJ1l5JC2zSt55d6/zwqA8haqjLRpITBkRjSB/6JAHH
         8xrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s+SJ/bwNR5ufjSVpUs3QyeiUaUf9FueaU7VnE0OqT/c=;
        b=Kva2ny5vt/ogdyZWD5jZEfg8TRxo1KN+aSNe53ERbKbdexiStFBpxbwV1W4olNUVbp
         BFeDeihAlOAIohm1OeLIykKpxk8K7s8V1PP5WHC5KG91oYs4/VXnUzFGRBz4UalhwsYT
         QhqBXPGqC+DABoyykTfUWL8fYGrKpujVS67vPbcNvXxykCJXHEuhCX+k/Ziasy6C51gw
         1CVh02XT4dnvauSRu8uw1KFujdViP1fmgR4u4Rpy1Ot3BQRXJyjcnGupCBXLiN0vVGdj
         VmhP7+rR3IU8IQFxYvZEb/sMq/9z3RUpFHnTTvtCiMBKSJT0cvJ+wVmfe1zvyOkzYxbn
         eYPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWNcfIJT7mkuP2RiXJIZdl634zQo0YX813NoPZ5WidMDE6MwNx9
	TNHyxUYO/T4eE6xJ57VJdJI=
X-Google-Smtp-Source: APXvYqyNKvl0H3rtzFH39MO6CfCsed9kH5YUPqcANGMkM/hXmOheDdWCbTBYJcxRbDAuAq1UQ6qW2w==
X-Received: by 2002:a37:5d6:: with SMTP id 205mr6408065qkf.388.1562939879574;
        Fri, 12 Jul 2019 06:57:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7906:: with SMTP id u6ls2775401qkc.11.gmail; Fri, 12 Jul
 2019 06:57:59 -0700 (PDT)
X-Received: by 2002:a37:2d86:: with SMTP id t128mr6516860qkh.429.1562939879369;
        Fri, 12 Jul 2019 06:57:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562939879; cv=none;
        d=google.com; s=arc-20160816;
        b=TXfkOx55Gei98JSTHZL+1yY9ieLG90jTL8tc4XOh+hBde6IhjA4rkOh1T+AgJRw0On
         fQMD1dCH4vwcizEGGutbiKdf01xkL2HFo9kYmR3tfsXrp5xnPs7KnNuxWXMv00Yolwvc
         66eVYRwPTjziuMswf1IS78RX5wRw+9m9e/VodNATIUsyDFjSVM773SI6Rxg8RVY3IL84
         z+qCsIBriWOUP3e8EjiENGV44eRDUDfNeIoSDT4tSzZW33LxUIn3ynzUAb/tftzYyvFZ
         j7lZHewpGRSDuv0xWYdbEG9NvuheTNks6itVY63wTeaRU0HLbjGl5NfoZTNhTOcOgOea
         j2Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TXHql32c4of63TlzAP83YCCfWPtruJyWFCjCrlhjQvg=;
        b=fscmhU25svWS78OapoZ5Za2SywyEnv6nHbm88vzn4Pq0E0XnjauyxShWD4uxffY/uc
         3vIyxOQoaM5QCpzYlmwfdiuE6wOTRNbAwMI244E40VyGe2BAeN9kcJO/e2rWkU+Fw6jU
         T83mSCBGPGdq6tSV+oNdXy95Q4cb6eDSh4A8jOSFlF3ycHmA/PbmDm30pwSeXumVStxm
         liwHS/vPi/m85+UK5SPL19sJ7Je3AQBiaIjFLPlX2Hx4ZCKN9gnB8qhURjhaj3EjOv3C
         JhPts4FmnIUGHUk+EO6zuPT42V6TCaU2vHnBlIohscqhiN63y8b2f2McEesa7faXvE5S
         /RvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id z145si312482qka.3.2019.07.12.06.57.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 06:57:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 856F330833B5;
	Fri, 12 Jul 2019 13:57:58 +0000 (UTC)
Received: from treble (ovpn-122-237.rdu2.redhat.com [10.10.122.237])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A803219C67;
	Fri, 12 Jul 2019 13:57:57 +0000 (UTC)
Date: Fri, 12 Jul 2019 08:57:55 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
Message-ID: <20190712135755.7qa4wxw3bfmwn5rp@treble>
References: <CAK8P3a2beBPP+KX4zTfSfFPwo+7ksWZLqZzpP9BJ80iPecg3zA@mail.gmail.com>
 <20190711172621.a7ab7jorolicid3z@treble>
 <CAK8P3a0iOMpMW-dXUY6g75HGC4mUe3P3=gv447WZOW8jmw2Vgg@mail.gmail.com>
 <CAG48ez3ipuPHLxbqqc50=Kn4QuoNczkd7VqEoLPVd3WWLk2s+Q@mail.gmail.com>
 <CAK8P3a2=SJQp7Jvyf+BX-7XsUr8bh6eBMo6ue2m8FW4aYf=PPw@mail.gmail.com>
 <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Fri, 12 Jul 2019 13:57:58 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Jul 12, 2019 at 09:51:35AM +0200, Arnd Bergmann wrote:
> I no longer see any of the "can't find switch jump table" in last
> nights randconfig
> builds. I do see one other rare warning, see attached object file:
> 
> fs/reiserfs/do_balan.o: warning: objtool: replace_key()+0x158: stack
> state mismatch: cfa1=7+40 cfa2=7+56
> fs/reiserfs/do_balan.o: warning: objtool: balance_leaf()+0x2791: stack
> state mismatch: cfa1=7+176 cfa2=7+192
> fs/reiserfs/ibalance.o: warning: objtool: balance_internal()+0xe8f:
> stack state mismatch: cfa1=7+240 cfa2=7+248
> fs/reiserfs/ibalance.o: warning: objtool:
> internal_move_pointers_items()+0x36f: stack state mismatch: cfa1=7+152
> cfa2=7+144
> fs/reiserfs/lbalance.o: warning: objtool:
> leaf_cut_from_buffer()+0x58b: stack state mismatch: cfa1=7+128
> cfa2=7+112
> fs/reiserfs/lbalance.o: warning: objtool:
> leaf_copy_boundary_item()+0x7a9: stack state mismatch: cfa1=7+104
> cfa2=7+96
> fs/reiserfs/lbalance.o: warning: objtool:
> leaf_copy_items_entirely()+0x3d2: stack state mismatch: cfa1=7+120
> cfa2=7+128
> 
> I suspect this comes from the calls to the __reiserfs_panic() noreturn function,
> but have not actually looked at the object file.

Looking at one of the examples:

    2346:       0f 85 6a 01 00 00       jne    24b6 <leaf_copy_items_entirely+0x3a8>
    ...
    23b1:       e9 2a 01 00 00          jmpq   24e0 <leaf_copy_items_entirely+0x3d2>
    ...
    24b6:       31 ff                   xor    %edi,%edi
    24b8:       48 c7 c6 00 00 00 00    mov    $0x0,%rsi
                        24bb: R_X86_64_32S      .rodata.str1.1
    24bf:       48 c7 c2 00 00 00 00    mov    $0x0,%rdx
                        24c2: R_X86_64_32S      .rodata.str1.1+0x127b
    24c6:       48 c7 c1 00 00 00 00    mov    $0x0,%rcx
                        24c9: R_X86_64_32S      .rodata.str1.1+0x1679
    24cd:       41 b8 90 01 00 00       mov    $0x190,%r8d
    24d3:       49 c7 c1 00 00 00 00    mov    $0x0,%r9
                        24d6: R_X86_64_32S      .rodata.str1.1+0x127b
    24da:       b8 00 00 00 00          mov    $0x0,%eax
    24df:       55                      push   %rbp
    24e0:       41 52                   push   %r10
    24e2:       e8 00 00 00 00          callq  24e7 <leaf_item_bottle>
                        24e3: R_X86_64_PC32     __reiserfs_panic-0x4

Objtool is correct this time: There *is* a stack state mismatch at
0x24e0.  The stack size is different at 0x24e0, depending on whether it
came from 0x2346 or from 0x23b1.

In this case it's not a problem for code flow, because the basic block
is a dead end.

But it *is* a problem for unwinding.  The location of the previous stack
frame is nondeterministic.

And that's extra important for calls to noreturn functions, because they
often dump the stack before exiting.

So it looks like a compiler bug to me.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712135755.7qa4wxw3bfmwn5rp%40treble.
