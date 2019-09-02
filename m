Return-Path: <clang-built-linux+bncBC27HSOJ44LBBGFVWPVQKGQEU4Q6U3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A400A526F
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Sep 2019 11:02:17 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id b20sf1808697ljj.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Sep 2019 02:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567414937; cv=pass;
        d=google.com; s=arc-20160816;
        b=cwrikuvU2TjH0jIDAwAQKGrmUaibqZ64lQ/JixW1ZYBWZFQHItAH8Oosi5nynttay5
         yfudF8RnJrfe5sZeopCFVg726VDLdc+j19sDKs1amW36vHRWs0eaKmJJdLS9494fplY6
         VuBsftFQWAs9LmFXcOIT2e/5MQlQbxDVErCoI09edPD8oMccBkb17CCOOBLmyiupvkB4
         qDQ/uCkXB8xyMMsYod//bjgSiOwNz7LJshKuhu7zUIrb0/8yYQobcWdkcwnPyJnBaSBC
         ogSrvjv9/iLW8aTij0aI3SdJP1GrsQA5UpDGwwR9dIEsqIl3wpv0Zbs2AsTmQl/OiFFy
         M6Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=a3BFhvPVU/094b4zgJ6JqSkFWRDTNCmvlnHBPk74EoE=;
        b=sJ1yJENcvEOIfgGtzM6oEGhKmj5ps3AB8mOp1ZCLGB+1C+GAnPO7xcZ1gS2Zgvm8Pf
         fHBEQ6eME1KjtvBSUR1I3mwl0asgi7Ypzukj/oTfmMyAxQ0onJ/pyVwtPaK1yapbLes2
         wQXkj/b73+0w5Y/Ly3VHG/ft4qVXFqveOGgLvBL7vIQ1X9yeBa2+Z+Pwc840RLSzj2+z
         W5Ize9g12CydGDSJxXWGgpQyhdiFI6VyosblJV1h/74hv/OyfuFvFhFTMmm1AMM01fSx
         K9DjXf/m3as0o4BT45GqkuzExL/tsopxIyhD7uKUTSV5Bpko3fd9gt/WSIH0/kqu1W1T
         8jWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a3BFhvPVU/094b4zgJ6JqSkFWRDTNCmvlnHBPk74EoE=;
        b=gLFe/lSoSLs0lET/gsUr5CUoBi0WsfXUH/PHoNoD+WysQ/rXY7iIvlN1q6dZGy2Qix
         ma1y8dwwQD5IJSDKdBrQ/2DVCNxWmCw56718HnHELtld/e3SSE2+yWvBhVWZxq5sa785
         anvB/sa0mRPUOpfeh++rhLj1YLE/0oVMbgB+jrtd188kDSAbN4XtbUP6+tnfViQh/7Lw
         z5JsXQdl/+e97fsasBMYz3KNmjNnum4pPPWAOYahhNObphLFNnzPRZgZ7p1k/uNZsr0d
         mDx/e0qo5gSjvJGlS+zUmht1zKXG2535FA9+wg/BmH9tNTd/1slxUY1G6t88c+9e6GZj
         lsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a3BFhvPVU/094b4zgJ6JqSkFWRDTNCmvlnHBPk74EoE=;
        b=XAVmcDaVMUPlX9jI57H9wu7sk5ooTa+knMpzDZbxbd8pmnNBbcLua2b/K7+5taJX0n
         /DLiFViSN7DVvBoFjiu44/utv3kzHkqgaW8+RdtAfxtutoLI2q7nMUigsZ3bAEgNKiR0
         6EF3JtqQyE9QTYra6ACCJsfocy5B5S28RVtArIs9qzJNwYumQDdbYs0n2knMwPs/vWpb
         1lsDwzWh5FmgGV9ILn5+nlwJ2GP3Aiv5onPX7HN6XauFkh6BkI9wA1hP1V3W1qLFW3ZN
         /Lbfv7N9l6209OGgU/Fw2igHwd0j6GIQBarB9mCATcxOwVgXar5ThVMzRZUwntA8qPpl
         Eg/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUFEnlXdVYXz1oAy0+FcyCrH7xPnuH+FnhmXjqTsWPlehehfHCG
	dqsRVaWk96/uEa9NryYatP0=
X-Google-Smtp-Source: APXvYqwJlC24Yst4VqBxu82ZraYEfClgCwF9PmGDPj1jnO+nPDDZecWV4OHebeIvDNDyUfEEgLVXjQ==
X-Received: by 2002:ac2:4a8f:: with SMTP id l15mr2704751lfp.21.1567414937085;
        Mon, 02 Sep 2019 02:02:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:90c6:: with SMTP id o6ls339864ljg.3.gmail; Mon, 02 Sep
 2019 02:02:16 -0700 (PDT)
X-Received: by 2002:a2e:89c8:: with SMTP id c8mr16216798ljk.138.1567414936566;
        Mon, 02 Sep 2019 02:02:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567414936; cv=none;
        d=google.com; s=arc-20160816;
        b=NMBgCHaEZLPQkSkMEpC9j9ZmQvSdMjslMVJt6BEQQ7oOd/ORBQo0tlbM1r4z205wVt
         D4OI+DEA2EOuhd6lhaHWgSBbgR650EM1gLQoYVs8jU6PVwT13D3xMsLBgNrppdLCeG9b
         PDs4jlOwjLlvm+sFIVN0CMkfO3jlpqOkUc3Knp0UmdxvdB3pJCBvZs/zLxTrOgrsyMM1
         ZaUi/t8Q/zVGmGtRRxkp6Zmm1kw7BuS218+vZ1+UxuP+gVmabJc3KWkJiOQp+G0o7LHa
         aeMUgXnmsgsjztD50OMwkwhabra/MEliiyRUOqnrAeqCEYXP7JjToyC2aamWctgZFcWO
         boyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=eyS1M4w5ryOAol9/MEXnvwYDChy97ZEuhaeo5Nlae2E=;
        b=UiXRZQgPA1mC2Zkq/wbiVnjGCYVktWV0yrJysEr17HumvuKnQWvbQaenSzbIClI73w
         DE+P/l6rD7tUDS0xF/bJ1cIuYWqRMsv9XlFh9kI99WOxoW0GQWVPaT8bHZt+/7Zb1AGh
         OXrpKNIIoyMwXA8DJu4SJV9pDZdgvC6ThsUT8Fajca0U9P7oGmYz9ZbgMo63/PfVfxKz
         7DBo0R7B2agQuC30F16JOpJi5LlRjauMp9UJGTUoGrCqisTwt50fBqFWVWi7UIgzCzrE
         Y6uw2K8ccRg92zBuy/3+SPtiClj2pXOrvxSHmaNKmublxV7ewqRvlMFB8Z0Knwov+kUf
         Mp4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id x17si58568ljh.0.2019.09.02.02.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Sep 2019 02:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-194-rYYILk2VO0WqBm185IgfAA-1; Mon, 02 Sep 2019 10:02:09 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 2 Sep 2019 10:02:09 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Mon, 2 Sep 2019 10:02:09 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Josh Poimboeuf' <jpoimboe@redhat.com>, Linus Torvalds
	<torvalds@linux-foundation.org>
CC: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: RE: objtool warning "uses BP as a scratch register" with clang-9
Thread-Topic: objtool warning "uses BP as a scratch register" with clang-9
Thread-Index: AQHVX1Liqj9VEXOMQ0SdqQ13OMpYJacYF/rQ
Date: Mon, 2 Sep 2019 09:02:08 +0000
Message-ID: <e3111f698ba342ca8893f65610990624@AcuMS.aculab.com>
References: <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble>
 <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
 <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
 <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
 <20190830150208.jyk7tfzznqimc6ow@treble>
 <CAHk-=wgqAcRU99Dp20+ZAux7Mdgbnw5deOguwOjdCJY0eNnSkA@mail.gmail.com>
 <20190830164927.a2czlphx4ho3rhhf@treble>
In-Reply-To: <20190830164927.a2czlphx4ho3rhhf@treble>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: rYYILk2VO0WqBm185IgfAA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com
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

From: Josh Poimboeuf
> Sent: 30 August 2019 17:49
> On Fri, Aug 30, 2019 at 08:48:49AM -0700, Linus Torvalds wrote:
> > On Fri, Aug 30, 2019 at 8:02 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > For KASAN, the Clang threshold for inserting memset() is *2* consecutive
> > > writes instead of 17.  Isn't that likely to cause tearing-related
> > > surprises?
> >
> > Tearing isn't likely to be a problem.
> >
> > It's not like memcpy() does byte-by-byte copies. If you pass it a
> > word-aligned pointer, it will do word-aligned accesses simply for
> > performance reasons.
> >
> > Even on x86, where we use "rep movsb", we (a) tend to disable it for
> > small copies and (b) it turns out that microcode that does the
> > optimized movsb (which is the only case we use it) probably ends up
> > doing atomic things anyway. Note the "probably". I don't have
> > microcode source code, but there are other indications like "we know
> > it doesn't take interrupts on a byte-per-byte level, only on the
> > cacheline level".
> 
> The microcode argument is not all that comforting :-)
> 
> Also what about unaligned accesses, e.g. if a struct member isn't on a
> word boundary?  Arnd's godbolt link showed those can get combined too.

I'd guess that it has to 'complete' a partial copy.
After all there are no mid-instruction interrupt states so the interrupt
returns to a new 'rep movsb' instruction (the isr can change si/di/cx).
Either the source, or destination is almost certainly cache line aligned.

> I don't see x86 memcpy() doing any destination alignment checks.

I don't think anyone has tried to instrument whether it is better to
do misaligned reads or writes (and it probably depends on the cpu).
The code will probably be more critical on the reads.
The real gain will be when the source and destination have the same
mis-alignment.

...
> > So it's probably not an issue from a tearing standpoint - but it
> > worries me because of "this has to be a leaf function" kind of issues
> > where we may be using individual stores on purpose. We do have things
> > like that.
> 
> It sounds like everybody's in agreement that replacing accesses with
> memset/memcpy is bad in a kernel context.  Should we push for a new
> fine-grained compiler option to disable it?

I'm not sure it is a good idea in ANY context.
It seems like something the compiler people has discovered they can do
without actually deciding whether it is useful.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e3111f698ba342ca8893f65610990624%40AcuMS.aculab.com.
