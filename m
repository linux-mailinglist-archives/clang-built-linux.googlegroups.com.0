Return-Path: <clang-built-linux+bncBDBJXS5P64ORBWXVX3VAKGQEGVU36OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE4989003
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 08:51:07 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id 63sf3618399edy.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 23:51:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565506266; cv=pass;
        d=google.com; s=arc-20160816;
        b=f5283/1QCDRAlBiV9q2te+2WUPbBhjgBcldrVdqh0Mm7qo3NNvPDKTy6Zb2ioRrPhK
         4JTprg6IK+IeaycIQec/rG8+YC0Lo7ODcjrT+jKtpFrzlxaXbbyUcV0veAVDsjCWdVUq
         BrHHN6AOUjCDtrLi8NSjPAI2pXRY8FaiNCzj1YnRIksZnmfmSmmlfcMx//0uxZoxJo8W
         oDMxYY1p948r8U/PYMsnso04PL5l7N4de3v18cfCWcWWiR2APKHt2x8/6hOY6KYMoATY
         nkdLQurnnX/rOIwKCIRAueWpceM31eaww6IzhfOenz6jC1TP63f7QgTYgHuAaSbaADaL
         0fow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=nbgX79e5yDiz8fqjdlF61HAptk8DM7yzhor0zdibh8M=;
        b=yAMwAuc8buIq6CjlPXBnws4SNMCfNztzB1k5+AjVlHRBx2Ie7gcknd21pF4LD+TS9+
         L1W3ABRXi+a5VbieRBS5AYFokPbraUkFzWgVrkfVCLeWZVeTK+s27K5qVygsRunpsAcX
         SwUS+x3vwdc8jbhDutSMfkOWmyrLBLNO18UPCUlbmFKhwTTYC7wWVQVg5WPCxVE23zsy
         FnPS6tv4YGjMSjDzs1xyOgqMERg8f6Z9JZW090Ln116kzwWveGiFWISl8e7LCRTgukLN
         vgTc5l4u5RbykDkCIEI3snGWwpRZQLcoMLTiV8hzDWmeWUFKaS0UknnzyiXic3Xti05h
         +2fQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bernd@petrovitsch.priv.at designates 78.47.184.11 as permitted sender) smtp.mailfrom=bernd@petrovitsch.priv.at
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nbgX79e5yDiz8fqjdlF61HAptk8DM7yzhor0zdibh8M=;
        b=Ez70gyrWTZr9RLBq+pB/5cXGJl5aCA4N3FutPMGO5H/RyQh9XAr/9Nfh16GnYH17Vg
         l/vFSa297oh+7cnM95IMAUuO+ySWo4KnshcJclURo/qi8fEIeF96dBokR2nMihSm1/uo
         KG33Oncja3n//lCW+QXnrsxPCq4iIPQovDuB7g4VIWadglMAwVWKnW+pGg85klm91kwG
         IM6R8qLzpLbAtedC1DYI5L+4ixMQBmkKes+fUAC5VhaCKZLll+p63Yi+KJGBsR5qSMdF
         gDiSNAgQ4U3Aup/HKiTo78niUpHt0x07dCxY5adw1cTpZ3EDrGl93kuAAdsbtr38hMrN
         zWtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nbgX79e5yDiz8fqjdlF61HAptk8DM7yzhor0zdibh8M=;
        b=ruBsAt+84t063bs/mShJ5Zuz5/BBMjxjWBHmnOfHjYKNw2VGj1Idk8ZHK7BJL1MxGH
         iW1Y4YCat+rAWS6XuXjw3pRcWNN12zrs28MLFdQKeUysDt5G21cBlSlW4GN4uENjS4Q3
         xOBhiANGb5NaJTMMxQmVEsNKQ1XBWI8plcfesfwcAQodR9b4Z/+9WLfOzfK2VnTd5DH/
         Uwr/7u7jb1p132SEPtfMc0is8uRfUYvhT+FVXI0nvUC7Hg+uNX7dDJhnhAtDZgCPbqow
         0DNrTYgO2b60geEN9zkasRXtrrgD0YhL7OMg9Ncg9ncAFr59tkHjzymH91SlL9FPpvmS
         JHkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXXN9IElQvvhl1T/hwwIlR9OWZfHAnevqJreaP6yGurz5vkAxS7
	q2VcRMKTckM76Wfk8VJVGhU=
X-Google-Smtp-Source: APXvYqwLml3ykYk8LpnhwEjW8pCtqF2M9Gfc5ozmrM/j8+e3yxwn5RNoPkguQcgs7pgjHt9XCChEcg==
X-Received: by 2002:a17:906:60c6:: with SMTP id f6mr20539083ejk.272.1565506266723;
        Sat, 10 Aug 2019 23:51:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:80d4:: with SMTP id a20ls1474946ejx.11.gmail; Sat,
 10 Aug 2019 23:51:06 -0700 (PDT)
X-Received: by 2002:a17:906:af7b:: with SMTP id os27mr16730599ejb.39.1565506266310;
        Sat, 10 Aug 2019 23:51:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565506266; cv=none;
        d=google.com; s=arc-20160816;
        b=tXzbsb4SbYtuQ0zya+o02CagYNcTOtkGS8H6X1w+a+PYJEo+gdxlxGJM7XOzwu/DPV
         PsHYTra+MK7xWZiqGZoZ/FFSLmP1J36JWFHz1+Gyw+eZhzliCF9E89Ch/hpDPBbe5Y8z
         LDFrhgJWrvLoqwvJlzBFhwRd/UUBNWTzNgsnn2jUZgMUmPdMrRDJEjKKiPWV86hFpoBW
         9phXvmzog5edoXC03nqtWlR/D2ndHU0Y3UOJT4tMB1gUSpKegn46+KD+jxG4d5s7cI3/
         dqf+JOrQ0cE1b++obAzkZpbXvNrXq6I5To8uY+wqd+6YjjW2kyeihvfbb3OiBsdyQru3
         e8ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=7UqIDuxPB4Jz1atTCeuJpEvp2tZA4jOhTZfNWLf3n/s=;
        b=PapF5iBWXu6fL7JpgdyfTd/7ilgBf7WhhXXhTUGh0xv2s2BLyuXbV5TRowyuaQTvZD
         DFPCyxbw155i4XY+muKUMQCBzPJJizJoxUiI3fJV3TWcJCaQKZkBpcYkqkrajmRyi6LS
         XR9ZsrnNq2XRTk8k0synUlBy4NZnxTqK3+RhWu+RO48msvowzrb0hUk4Q64Lt/PYQNy4
         jOuKy7uBFypfVFb0x1X7j5/IrWeeeaHQ8F9QtLKW+z5X0BWtnQkXUl+54CGUHhsv2hZD
         IxJ+yoBRN1WZ6e/jZdFh+DDFvD3F6zL5eWqIPqzzOkzXpQ1/286Pf3uRGW8nGQ/zjQGc
         fmEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bernd@petrovitsch.priv.at designates 78.47.184.11 as permitted sender) smtp.mailfrom=bernd@petrovitsch.priv.at
Received: from esgaroth.tuxoid.at (esgaroth.petrovitsch.at. [78.47.184.11])
        by gmr-mx.google.com with ESMTPS id b39si5846752edb.1.2019.08.10.23.51.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 10 Aug 2019 23:51:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bernd@petrovitsch.priv.at designates 78.47.184.11 as permitted sender) client-ip=78.47.184.11;
Received: from thorin.petrovitsch.priv.at (80-110-97-231.cgn.dynamic.surfer.at [80.110.97.231])
	(authenticated bits=0)
	by esgaroth.tuxoid.at (8.15.2/8.15.2) with ESMTPSA id x7B6oTFa029135
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NO);
	Sun, 11 Aug 2019 08:50:30 +0200
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
To: Nathan Chancellor <natechancellor@gmail.com>,
        Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
        "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux@googlegroups.com
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
 <20190811020442.GA22736@archlinux-threadripper>
 <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
 <20190811031715.GA22334@archlinux-threadripper>
From: Bernd Petrovitsch <bernd@petrovitsch.priv.at>
Message-ID: <514fb156-7d81-a812-510a-7f252c27e79e@petrovitsch.priv.at>
Date: Sun, 11 Aug 2019 08:50:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190811031715.GA22334@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-DCC-EATSERVER-Metrics: esgaroth.tuxoid.at 1166; Body=6 Fuz1=6 Fuz2=6
X-Virus-Scanned: clamav-milter 0.97 at esgaroth.tuxoid.at
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
	autolearn=unavailable version=3.3.1
X-Spam-Report: *  0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on esgaroth.tuxoid.at
X-Original-Sender: bernd@petrovitsch.priv.at
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bernd@petrovitsch.priv.at designates 78.47.184.11 as
 permitted sender) smtp.mailfrom=bernd@petrovitsch.priv.at
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

On 11/08/2019 05:17, Nathan Chancellor wrote:
> On Sat, Aug 10, 2019 at 08:06:05PM -0700, Joe Perches wrote:
>> On Sat, 2019-08-10 at 19:04 -0700, Nathan Chancellor wrote:
>>> On a tangential note, how are you planning on doing the fallthrough
>>> comment to attribute conversion? The reason I ask is clang does not
>>> support the comment annotations, meaning that when Nathan Huckleberry's
>>> patch is applied to clang (which has been accepted [1]), we are going
>>> to get slammed by the warnings. I just ran an x86 defconfig build at
>>> 296d05cb0d3c with his patch applied and I see 27673 instances of this
>>> warning... (mostly coming from some header files so nothing crazy but it
>>> will be super noisy).
>>>
>>> If you have something to share like a script or patch, I'd be happy to
>>> test it locally.
>>>
>>> [1]: https://reviews.llvm.org/D64838
>>
>> Something like this patch:
>>
>> https://lore.kernel.org/patchwork/patch/1108577/
>>
>> Maybe use:
>>
>> #define fallthrough [[fallthrough]]
>>
>> if the compiler supports that notation
>>
> 
> That patch as it stands will work with D64838, as it is adding support
> for the GNU fallthrough attribute.
>
> However, I assume that all of the /* fall through */ comments will need
> to be converted to the attribute macro, was that going to be done with
> Coccinelle or something else?

clang has not problem with the comment - it's just a comment;-)

The #define above works BTW.

MfG,
	Bernd
-- 
Bernd Petrovitsch                  Email : bernd@petrovitsch.priv.at
                     LUGA : http://www.luga.at

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/514fb156-7d81-a812-510a-7f252c27e79e%40petrovitsch.priv.at.
