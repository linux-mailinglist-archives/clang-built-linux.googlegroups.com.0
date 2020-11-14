Return-Path: <clang-built-linux+bncBDRZHGH43YJRB4N4XT6QKGQETWI5YNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 949102B2972
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:01:54 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id c184sf4856265ooc.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:01:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605312113; cv=pass;
        d=google.com; s=arc-20160816;
        b=il2inXuRoMRsChei3CRLJ4SKnrjFGcmo3qrJw6MNYQUz9jIorvpWTGtr30tEZyusfE
         DkZSL6DcnkRJ9dYQAlnKB3EjGYOpbkrILc56k7BGnP0XpGhw5+El+0+WTBWoho5giRCM
         uKkOVZytaoezy+R2bNbSXa4QYhGpawbq6OvoOhJcv+SfEJn3ACckUp7Bp7iH1xX3GQQT
         iRVzJ36nLQRnx9yg57VAtmXZGNu5tOey/iLiWmSltDLeQTEzM6uhgiiKZeLlAvZTlC+j
         Dv10bnU1YviAwHoidmLdIHSU/GgrNkZyiIKrCTUqIYLUj9IvkH82KI0g7LGonrQqLZ+1
         xIUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=JlTAybmYg4Xxnl6gVRpQ/TQK3hoARHDvRddxtab4h6Y=;
        b=BNxTfCzBkto2dNHi2z7BrKZV94puBIVXWkNr1o29zelUUWcH018lRBIED0HLU/lxAQ
         kProqog4vnXgqINB1dflTErhvwe/A6rSZqyb5bmQHN57+Id3jiF5pXHsjqfO+wIJaO8D
         kjQi2ed/Opf/xiJN3/CaLA2HjOShk1SCDK+xG/HOqVIYAy+GRqN5hnyqJyF5Shz5FfGM
         O80GdFCnCLb84NcYkdRmJi+qRKrBSP13UjA+CEQvqgHHgcshB0F0Znk+mosoQ5WRBCXE
         ltdkrK/pJZAqlh/9K075xvL2EK38N4JAF0EI04UFl+xHJ1cjd/Y17ugGpxx82j9i0n6t
         64qA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HbepdLG5;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JlTAybmYg4Xxnl6gVRpQ/TQK3hoARHDvRddxtab4h6Y=;
        b=cdF4uaCj+F2es8XCa5zf6K8+Kiqc1IUbhqNxYFnh4VoSGC4k++Kb0lmPFr/zcoykeY
         tUv3g9VoIjbaoa822E8bdT0wcbr+p7WSazsuRGdW52epL4MQoqt2Y6C4p0nxY5E5jDru
         zrMdz+FZ5zx1FoJdsvh3sT9GC/2bjx4303WIJW1hzyv0s/K6wnKd+ac/vMe4Lan6WMpy
         mW0Fbw6IR+/Llw0NwZYp+nl5PrayM7UaZSnVv52AdygAEjNXGs21u68oDXBYGKzI7HAq
         KV7BeBg0RCTGqhDI6bR2403KVXSJ3uT/rHdCRF+xVDcCSq8JN6xQqXYtyhonenJtZHay
         ZE6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JlTAybmYg4Xxnl6gVRpQ/TQK3hoARHDvRddxtab4h6Y=;
        b=FSws+/TFf7zajipza902YF9rzKgED7+/fRGv08N0W9C9fiJzD9cLkIwKw414KbpBME
         CbKrWcPSsolwx844GB50jfZnOcHamU8f6tbCd3h3I7dvEPtCJzsJmOiqhPBlsnGpo/7F
         mtFKypIq51yt2Oj/MAXSm0GvdAqem+73AmrYX+ZUjg2DFOoPxD09p5UY2Nw0nzQ6eVPH
         wzZmhEyibW13GG4caKIQKnP4Yp7zaLELnP/iYZmUsCK1S6asMsuNqYcc/ShAzpIhXAxe
         i771qIRFHaye957IkZMNT4p3tvPcHcOcnLkCyfJmzeJJp4lZWEm0zp2GxAI90D3KLOJt
         EEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JlTAybmYg4Xxnl6gVRpQ/TQK3hoARHDvRddxtab4h6Y=;
        b=R3MRVN+0vNAq3bb6YpcsOPE/R7dt6sX9NwnEq42wBsIJUY4H6Z4RTkMZGKdGeHFl+y
         096f37/ByuQx9xMAMMEwsujPPi5bBJoJLlPK0YIg+Y4q7HMapTfVjjyfCW2FGkO4Lubv
         llwLjgpYsx7c7JtiVBuk1A2j8mq7aKJbYXcPz850zgtfz8o9WQoVR3VXykYuUo8ghkxL
         3wx6Ed+qy48s/KWMLzR03KNn4CLb9yk3bkbO82CT3L0l7xJPyM4RZ1E2tl3TfUZxh4qq
         /1RNGuPO0k31uBZ6Z42jh9FpZWt/bS6/y3bi7hdS4MYDS52uIUhtz6zMr+vAgDSNsRiz
         LYCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300wiG2F0VJDD0VQcUwXA+bxzAg/ELIudZfS2w8rUwMCAkpJjW+
	0oTV3TUU1hb2xIWluszIcww=
X-Google-Smtp-Source: ABdhPJxBSKbVpu+RAgwLggrmRNe1yyfR9mJNQpjtn8lwt/cWr8T08L2WFNcVbiQ9/clXeE00V4oEOQ==
X-Received: by 2002:aca:5505:: with SMTP id j5mr3024235oib.6.1605312113546;
        Fri, 13 Nov 2020 16:01:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:416:: with SMTP id 22ls1887569oie.7.gmail; Fri, 13 Nov
 2020 16:01:53 -0800 (PST)
X-Received: by 2002:aca:4797:: with SMTP id u145mr3541785oia.0.1605312113242;
        Fri, 13 Nov 2020 16:01:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605312113; cv=none;
        d=google.com; s=arc-20160816;
        b=Lqstj54ltaMFyHVF735mQAA7zAtEawFmUPkyBDmA++kQshDitT25ilCTfdUYGGYP0m
         GiWIAqnHB+ORxxmlk9SWDvXNhyqo78y841USHTcoz+n1wh7v8reXoMFoUOh9LyCBxHEF
         ZuA98BGqi4B3rvqHGA5m1gBpgFSH6JzF4RJ/4GstHq0igdfN9jambTVAvT4iZ3gK1pz5
         4gzk5obe0ddZjm5RHpXl47X0T8A8igbzkL8vrA7tcxhX0mfaJYzgkcAPOiyuQkVMOc61
         x4RzeVwsmEvRJYSsNm3SE6oeP8kO0O77B60ZmJoO36SZL6d6mSCSD3YxvHoZz9HkbPuR
         S+eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hEvi5BiOKteXFQNHvvpCi93t9iZNUB9ug7NgeD/h5gA=;
        b=qaKzTN1ocx/Haw6/D19l/05fK0wg4evQ9iJS5ThzxP3SPTaJiuVpM0UHvCr/yNTtSo
         0zu2JSMGzg7V8YYNuAop7cDbg75VLj+2sSLhGtqedfFD1viuvD+0rt8NcB6Zry/p0FWs
         7ukppzoIWB2VnQIjrR5/d3ZlI8A494OKq8fFRSmLQi3aJg8WRMmcmsPqo1J2Pt6Sfc4x
         s287HOvj3AEJO2fAcOOUxShLDcJ8+1wCPbJaSGxZMFyIj9vlTkN5s5pkKQcYZTqpw7MR
         PgG1yBugdh9sjv7+g7OznkH80p5+5JFZcY7UHl/o7bzwhDOkdO72z22bf6+CGaf1QD0I
         m7vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HbepdLG5;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id p17si762314oot.0.2020.11.13.16.01.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 16:01:53 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id v92so10281452ybi.4
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 16:01:53 -0800 (PST)
X-Received: by 2002:a25:aac5:: with SMTP id t63mr6454720ybi.22.1605312112896;
 Fri, 13 Nov 2020 16:01:52 -0800 (PST)
MIME-Version: 1.0
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
 <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <20201113234701.GV2672@gate.crashing.org>
In-Reply-To: <20201113234701.GV2672@gate.crashing.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 14 Nov 2020 01:01:42 +0100
Message-ID: <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Alexandre Chartre <alexandre.chartre@oracle.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HbepdLG5;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Nov 14, 2020 at 12:48 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> Like *all* GCC extensions.

They might not be standard, but they may be portable enough for the
compilers we care about.

In any case, files should not use attributes on their own.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G%3D8OrpG34qYHGLDGw6Q%40mail.gmail.com.
