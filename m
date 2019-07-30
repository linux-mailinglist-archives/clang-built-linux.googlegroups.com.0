Return-Path: <clang-built-linux+bncBCR5PSMFZYORBZOOQDVAKGQETFNECOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A38E97A6B9
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 13:17:58 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 145sf40638769pfv.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 04:17:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564485477; cv=pass;
        d=google.com; s=arc-20160816;
        b=rolHXhYyDa/WYUPH1XMjIzcImAqDd+PnKozUpxIWqmmL6AhxeFboi9Ex/zqoft3Ls4
         zP9ama8yz3rLLhyyL122dpzbH1+iBfzpfMPhIA2A5SMIesbG3XLYQ9rJRX6RAU9ZnJiL
         hx9JEX4l2L4yQ1iuy6Yy+b9aF2Wh5eHJPyyd8jbcyfB95tbBt15iVDwmCEGo3TY8jcPo
         FfCHivOzl3444R6ALLWHXb9mOS1ENyvzo4mqR2n2XKetH2FO7n7xsaPw0pAPFgaCZD+5
         DUnyCtHqkd0cs8AvNgpI6lFWp+fXtKsmmBkfeOxyWzXz7WXIi9b5JKYSUzSNlEYup3mI
         L3Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=nhk6pkEQ9ublgLLL9t/eMkw6UGi6cGGz4qQCZBzdA0I=;
        b=STabiiO9Vcs+3Yz3O+wHEs51c11ql2Ic+yUpqJZYHWmx74HYMMVISZBDW/a2Tph9XI
         7d7rjY/3ULJF+bPFjcIkQ5IVBq0Pd6bIHGOcXHoj53f1C/FlVs3BzJ4jFPEZUBmUSTUN
         54/8K6LJQrKvpIorr4Uii9AHj5P/tbfzpx8A2J2qbWYX0U+Uue0npCknCAjaAmxABIKn
         um+tiCvKYjgs+ujCwQLpsbh+YVGaqO6izpugvBMc4QyUZisPBaKN4KvPRTGvR/H946nt
         BzlK3M95Sve1QEDKTockd2RVwqGj/VzOJubZzk/Jf4FnKoAvBCpn3+v0zI6a15aH6nuR
         bIsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nhk6pkEQ9ublgLLL9t/eMkw6UGi6cGGz4qQCZBzdA0I=;
        b=NU3QJKxlAlD9kbDA8JH48A5stT9DzitnzHVFUbna8D9MVjmYFmQPcksVQszSx2PsGR
         2rm/b+W7uNyFuOHYMTFYvRAfO+dwf0qe1Z1WxkwSoFsuXiBpCIJ7lpLsNcZwJNl1LTiR
         EILRogrqccg5MhMOCQlyx0m1tLg0hwQ+VCyUOhvCqFuA9S0MQ7nqLNDTAyYEE9e3hxTr
         yt6KWmgOs/C9m8S+GgexwHN/nXhB53aqTbN8N1HIrGN0NorQ+mkT+alaxqtA9aZDziky
         N+WSOSlsLOLXwXcWMSZGI2Umzwhp9eNKW8P/FUOeQWjky7kRpvLk6r4D/kL+cVutGgoD
         88HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nhk6pkEQ9ublgLLL9t/eMkw6UGi6cGGz4qQCZBzdA0I=;
        b=pNRFxZb4wViLzqQKBXKU3df/DMx6qgjQ5qThoXNL7FPPoK6G48/rBis0kHSuyweP3Y
         KaLl1qfrMZ33inB5rZKi+iSSQ7E9MDdLOifbNuBbGY3j0Qw+J7dxmzdvq4zeUADfFD58
         Q1Pw7gbA+Box3LeVxsIhcyZEDRXyOzT8efQX90lsJMm6MtotYIvS7l5yR0bsfA9eea8Z
         e3dED9bSmJia91ce1gdfPu+A/vhk82/xDSWc7s6XE2xL9DOHolCYsa6wsCvcKpRfrXXJ
         uj9ek1n1M0XXmSiSkvSMEx77j59VyzYkLznus/Z3gkJUQxN4c+Jfkp5afkSLtk2TpiJS
         CE9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUIVv04NvxkCM4sh0EYujwiUHmeK/EVyvBDVaoVT1skiEiK/hl
	JjUVWLr7acY7qhnmcOEwHkg=
X-Google-Smtp-Source: APXvYqylOeY5/Qvu1WhQh6gpf0StKeWioCIybro9TM6JTvtCKpUUex3Eo/oetZiofEAv8wRhwZtTuQ==
X-Received: by 2002:a65:5c4b:: with SMTP id v11mr65952677pgr.62.1564485477244;
        Tue, 30 Jul 2019 04:17:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:372f:: with SMTP id u44ls22270097pjb.5.canary-gmail;
 Tue, 30 Jul 2019 04:17:56 -0700 (PDT)
X-Received: by 2002:a17:902:968c:: with SMTP id n12mr120228254plp.59.1564485476974;
        Tue, 30 Jul 2019 04:17:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564485476; cv=none;
        d=google.com; s=arc-20160816;
        b=hbOgl/+DpLqFGYUZD9aMOxus7ADN8TO4gQfSlq95QRqyD6BQeltCfMkEUjjNyPKFKY
         cFuf+abrRkxk23Rqk0EXCKlsscrjfrpa/ADhl/brct30OeCkWoyda5LaUUdPrQ7BcLYT
         gg6763144SfqxoaV+CvB04XnTs127g0Qju9YJzS9fvEfrSsLJYymQpzjesAck9lchhWN
         /0iQoBokOnp5Ex416lvOJ5CUmlpLBCzs+xKX8cCmm3hLyUi5pr/hozbZbbQOXTWgBPFq
         hIq7O3dBmOp1FcAsl2NVEDzUUn6qEGS0QjZBi2XiGW26J+WmT6iNzDEgOokD9pEa99mR
         jK5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=7Da2f815UiVffluS2tiAN1Tx2FbDRNc1/mdMnHHtD4I=;
        b=eqeQyteOrGgxnQF1hPWSxCh43qrD4LZ+XrLbiaC13LNFBI79ZrrFfXLBgsvbMGV1FA
         dguM6wTLM4jU+AMQFlwnveB0Te/m4oeK/+pGAvJZkBxJOCXDpFgVE020hJAxIwwVJ4nb
         KRF47pbzwpBKwtIEmWGHNOv47ZABRa0E+6FgEunnGspHe5P3bBAbpKEkVIvrmfomqaW4
         W73DQZ7qKxa3manrFsYF+3qK8SJydQ0RV0AhiR8Q0HICujFaeUv3GIQUi+qiVB1oBave
         08fdUngq4LXDYJ+oQvqcGzLkogfu2GOutpjLyVu+d6ShPt6/tWq1tN166SEsiTtHBRVk
         RvDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id y186si2034260pfy.1.2019.07.30.04.17.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 30 Jul 2019 04:17:56 -0700 (PDT)
Received-SPF: neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 45yYv11BhNz9s8m;
	Tue, 30 Jul 2019 21:17:48 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Arnd Bergmann <arnd@arndb.de>, Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, christophe leroy <christophe.leroy@c-s.fr>, kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
In-Reply-To: <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com>
References: <20190729202542.205309-1-ndesaulniers@google.com> <20190729203246.GA117371@archlinux-threadripper> <20190729215200.GN31406@gate.crashing.org> <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com>
Date: Tue, 30 Jul 2019 21:17:43 +1000
Message-ID: <87h873zs88.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess
 record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
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

Arnd Bergmann <arnd@arndb.de> writes:
> On Mon, Jul 29, 2019 at 11:52 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
>> On Mon, Jul 29, 2019 at 01:32:46PM -0700, Nathan Chancellor wrote:
>> > For the record:
>> >
>> > https://godbolt.org/z/z57VU7
>> >
>> > This seems consistent with what Michael found so I don't think a revert
>> > is entirely unreasonable.
>>
>> Try this:
>>
>>   https://godbolt.org/z/6_ZfVi
>>
>> This matters in non-trivial loops, for example.  But all current cases
>> where such non-trivial loops are done with cache block instructions are
>> actually written in real assembler already, using two registers.
>> Because performance matters.  Not that I recommend writing code as
>> critical as memset in C with inline asm :-)
>
> Upon a second look, I think the issue is that the "Z" is an input argument
> when it should be an output. clang decides that it can make a copy of the
> input and pass that into the inline asm. This is not the most efficient
> way, but it seems entirely correct according to the constraints.
>
> Changing it to an output "=Z" constraint seems to make it work:
>
> https://godbolt.org/z/FwEqHf
>
> Clang still doesn't use the optimum form, but it passes the correct pointer.

Thanks Arnd. This seems like a better solution.

I'll drop the revert I have staged.

Segher does this look OK to you?

Nathan/Nick, are one of you able to test this with your clang CI?

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87h873zs88.fsf%40concordia.ellerman.id.au.
