Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLWO3T6AKGQECEOK43I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB0A299743
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:44:48 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id 189sf12190659ybp.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 12:44:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603741487; cv=pass;
        d=google.com; s=arc-20160816;
        b=tIg17grdiVfd54/JkqWyAPLwxk3PYTbBhju+Tfnjx1RywWB62/yKmJ2fBS+4hCfdB7
         hPsq1/t92QCkX7ivu9Mr1rf5zIJjOZD6LOpOTntSeIKQ1/ZJ1UFxaCocwUJEguXSTca8
         s2I9rKqyqV8cM891fkc9GrvpEb+6IopkAtLd7IJNbYke4nhNrVG7gVR8uxEWWFoSEc5p
         PDLkW91ScaEkYo6iFET9dOCrBMvDYWUbEw6pfoyGoglOpvwMZJyuyiUtONJn5bpoy2od
         uYN4cFS0Hbrd76V2GMXCwd3VJxwvX8tiOZ3gIfaI0q1Ynlv7cYTdbD8+XCvavY5dsDbJ
         RVdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=yRROv/mKWL4o/Yo6S4Riyhyri8FNMKba1FpowwW5LIg=;
        b=vT1/uPcORjZh6cfjk+YcPq+ie6Yp/Lq4eZauc+P2wJLW1tjNug4J3Ay2DfkFNt8xJz
         bX7ZgOvUdMgbz4kNqP4nqpHSrH/YH1OzTFRKel0o9p4pDJKUWZc3seSmyBPmIIQA5BXW
         UJOeXyY3AUPa6RSsRPLlajyuZMvj2HbjkA8HgKFCxTNjqJBAgBtgMqZ2PAeiKmzF2pUH
         Q3JwXK1jbUeFPfrYYsavuPhAAfB20QFNrNriZTCDOAn/mFpTTqWy6ccu6ocUsZejtGDl
         FArxOfyeUzwg09r8ISJ8KMeoFDBYwu2NLoLkaE/HpmYCss1Wz0/HbA7a4R2/WbAR67pA
         3dSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uGeZxrbK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yRROv/mKWL4o/Yo6S4Riyhyri8FNMKba1FpowwW5LIg=;
        b=V8zdna9AOUiqKtBGYWxQ3moLhgQw05Zjrvu9dLPOJ5bUCIgtYUOlQMhEXdsI2hRJXJ
         VV6gsVJa+I2AunDYtlzEImqQhjr2OprWt52MFgDH7y2i+sSWoddAM6uBWZRSwr9GI/jw
         sorUP+Ap9sfcjlBPe4UCJHZ3rKmPITfgfyEDvIfuUWiHLTjJkRAefejYFYVn8lwYHyaW
         dkVGtkfQR8lbeU2O6bxk+aY+ZtMY5yzS2JUcAPCbFg4sgxwPWm3XPASoBvsmzlqh3gXQ
         Y2uv5unbLqdG90QFDESkVaiyLeYF7oUX1hUPvhDjssLyJ8oCrzHPB1MKrNZOBiwcHmSj
         C+ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yRROv/mKWL4o/Yo6S4Riyhyri8FNMKba1FpowwW5LIg=;
        b=Q2NCVV63D/E8ookL6wBZXzljcgwguvwXkgix+elukkwdudwTtCohfhuOOsV3z3D7Fp
         BQZE+xXHZRX8csz8zwbe2fxbn//Qy3paqIHfWtEHlTi6HSsCdOFCfNtig/4LM21a3Q0l
         /r4xqm0ipemhrxTlna2ItQopCP/PkiQD/P1GWOUmCiIW3zfvv5L4lJzhPp2aHTJ1lf/A
         tnD66iHgKLW4izqKVyU7Rq8LDJMJAtAqB6JiCzIL+JnYq4/vNmsN8fUFmwnlPxt2g9XC
         szAGYw65+8Ry0KScxgo8x9BTu9NWH9xPvDMhVVWNucq6/7uyGPzIBBbB1s5JZZrhinhX
         iKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yRROv/mKWL4o/Yo6S4Riyhyri8FNMKba1FpowwW5LIg=;
        b=gHMWViQhf9E4L59xndIltyczuEDEoll/nsJ7RQPHJ/D6NqKk1TElpNvxT4diXERPLe
         okHY+GVcKl/5B9NW2bOh6hwp5fYuZolLk+B0yClvnnpAdngU/2iUkJmCDqMctotdlDwV
         Oje2iVfkOkhOyakjQaMor1KkP/oxJzLY6wk2CvaFI/LJPPuyDI//YqLWj4nHhqcnVA5R
         s1X/WDzPhk7cTS96hipwas1A/YAI5fq9IOUlzeQU69IuMQoxDEgBdw1SwzjbMo7m5dyA
         Bb6s+HC3XNPQa2CjMoyxaY19AyfODXiH+3F9tc07DiQVp+syap6+fUT20nVUUe5EpYjb
         KjZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R51b9Fw8jVSCi70aRYwnN1GvOsRv7eVtBVK2hZVgVsp19kM3E
	nIiYfNrk0r+dEPckQHSuu7Q=
X-Google-Smtp-Source: ABdhPJwbDh2wxZmMunGRtUh4b6sLE0sxrQU6Z7Ln/6jFOAGdwwFbQKbldEaNJvm+DFE6fUM/Kv8CYw==
X-Received: by 2002:a25:4946:: with SMTP id w67mr27693962yba.143.1603741487057;
        Mon, 26 Oct 2020 12:44:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3f81:: with SMTP id m123ls4673691yba.1.gmail; Mon, 26
 Oct 2020 12:44:46 -0700 (PDT)
X-Received: by 2002:a25:d0cf:: with SMTP id h198mr2626523ybg.237.1603741486530;
        Mon, 26 Oct 2020 12:44:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603741486; cv=none;
        d=google.com; s=arc-20160816;
        b=Nq76Uu6P3n1O4rOGAWV8b2bFAFZsDvO/f40xBs5bc4chCvDwVwtcJrhX6Ff92v5+pD
         pHWerZcPrEmVqvfyuuP4QCEhZ4b0H8xGJsJh+2twC7p1PF/ILQPYae5s57ASXmbpjcT3
         T9RvVBBlBSFVhpbMOejrSquZschBACO6m3cmdv7jrIwGi/KfvdL7Yv1Yl4AwvByOBJ3s
         ldvgNfrugRKlxCoqksAvn1VHO/4JN5H7QxAD7iGM5g4QufAr8Pt1AAMdzxEEXM0ZL3b8
         oXy+UEWClA3aFqS/cR3Nxn01paODEme20gOUfQOcNvt/o7SVzMTyeGyeBIwMX03gtKCU
         NaDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AZnYVCXpAdxGrITpeg/XVTk5Yy68LhIj/hc9zCI8ypk=;
        b=IDDWzqdn4I/3Ocr9usirPpK2PqE7TYoxsiUUNfRhGh5TmtDKChnth3dwM6o/85aWVA
         MU6wD+P29I33lgTIKy/NP+J+eFPc6pj0MXZrpFUu4A0jFJi0h27qHXrzvd+opR/mW/J2
         oI1CQcbixQrVTM4PHrUUG/IKpf3h8Pq6lHFVP+SPZPaIMukhrMyCWUMSX14cOgYMZ6xg
         2kqW3ZSWLJ21XxbugCGYfFh+JrbrWECVvIRQD3A6ESKhuFLHv1OVGm5nodTBzwR7IcPc
         YRyd0jxEYmk2cU+ukSsU5ypTA3S8NyhGaW5RanAU3gUUPN0J1qHvBNdgFk6Rht9eOdq7
         6STA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uGeZxrbK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id t12si812987ybp.2.2020.10.26.12.44.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 12:44:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id m65so7634985qte.11
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 12:44:46 -0700 (PDT)
X-Received: by 2002:aed:2338:: with SMTP id h53mr19116043qtc.127.1603741486093;
        Mon, 26 Oct 2020 12:44:46 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id v5sm7068456qkv.89.2020.10.26.12.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 12:44:44 -0700 (PDT)
Date: Mon, 26 Oct 2020 12:44:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Joe Perches <joe@perches.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to
 __section("foo")
Message-ID: <20201026194443.GA2879078@ubuntu-m3-large-x86>
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
 <20201026193652.GA77796@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201026193652.GA77796@roeck-us.net>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uGeZxrbK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 26, 2020 at 12:36:52PM -0700, Guenter Roeck wrote:
> On Wed, Oct 21, 2020 at 07:36:07PM -0700, Joe Perches wrote:
> > Use a more generic form for __section that requires quotes to avoid
> > complications with clang and gcc differences.
> > 
> > Remove the quote operator # from compiler_attributes.h __section macro.
> > 
> > Convert all unquoted __section(foo) uses to quoted __section("foo").
> > Also convert __attribute__((section("foo"))) uses to __section("foo")
> > even if the __attribute__ has multiple list entry forms.
> > 
> > Conversion done using a script:
> > 
> > Link: https://lore.kernel.org/lkml/75393e5ddc272dc7403de74d645e6c6e0f4e70eb.camel@perches.com/2-convert_section.pl
> > 
> > Signed-off-by: Joe Perches <joe@perches.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@gooogle.com>
> > Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
> 
> s390 (all builds):
> 
> Error log:
> error: section .boot.preserved.data differs between vmlinux and arch/s390/boot/compressed/vmlinux
> make[2]: *** [arch/s390/boot/section_cmp.boot.preserved.data] Error 1
> make[2]: *** Waiting for unfinished jobs....
> error: section .boot.data differs between vmlinux and arch/s390/boot/compressed/vmlinux
> make[2]: *** [arch/s390/boot/section_cmp.boot.data] Error 1
> make[1]: *** [bzImage] Error 2
> make[1]: *** Waiting for unfinished jobs....
> make: *** [__sub-make] Error 2
> 
> Reverting this patch fixes the problem.
> 
> Guenter
> 

Seems like this should be fixed by commit 8e90b4b1305a ("s390: correct
__bootdata / __bootdata_preserved macros").

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026194443.GA2879078%40ubuntu-m3-large-x86.
