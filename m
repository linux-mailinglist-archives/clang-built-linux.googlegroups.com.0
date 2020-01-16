Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBV6YQPYQKGQEEOKQRQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7119C13FCA4
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 00:06:00 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id e66sf23830532ywf.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 15:06:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579215959; cv=pass;
        d=google.com; s=arc-20160816;
        b=eci3FaekT4wFHDlMvclEISwaUBhLLwgR4OyURk526ieoZHzH7ScJAB72VZpQ+1PAqI
         yp6gqfNYPeH5zc19dylqgB4BEN6225MbpXCczl0Cjqz4tJCM8N2KVJyC98pRUfCjvLvN
         FHPGrNvX7wZ68qKUZX22FSm98ZrnMOLoKHFzVPbXEw6Pu64s5O8ZPD8No5v7Ru/MjsTR
         tRvZNiy7ZuDut2Sf7gvhIJYVO7tUyg4wYbLIQCz8p+TqwR8IsOs3vXsvOpBO9YTAH1rm
         aTxnoNEy8tHY9D7S7q9SZ4IhzrC9ezGkU6V3FL+e2svnVqZCrBnGVV+bdwGRg6bw0MSz
         lfvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=PosDMkG+3b2WnQITwUav04ZdBxC7iRGK+NJhwT/0G9g=;
        b=Iqd9QpKnN7I2bEqD2KCG6mI0h4ufI0Z0MPsL2Ztd3r4P9sNgDYq4e3a7r5TXu1GnvW
         bm8DkA3zRHbMa8i/8QRdrihbM1+ZkmuzJIEEs1BRkQnReQp649n4YEwaguneY7hyA8Ew
         1mQXwBVIsxa7dV7x5ieAl9x/uTFb6OEG6FsQO+gS8BpUFLhZdUJvhHvuv2CiiJLzB+zp
         xQ0VXZGYF6RZBRp9IW2gZGpd4r1iefUGEOYICAXAJ74Y7m+p3wiCpVk0COalkPyVMJj1
         HrxZBTlRfx5x9BbbcFcwENw5TVrrMiaHWyZphrwIWUAM6Rm+xc2HikYEcFF+beZ6o6+f
         oxqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aCo9b38K;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PosDMkG+3b2WnQITwUav04ZdBxC7iRGK+NJhwT/0G9g=;
        b=PtSisS74gQ4HAe4PtkvvccH61XZfXNZEjltM5yJQBP2l7uuZPPT85+an2n1AY6Trjn
         4O3h81lrV9VGPNhFw/lwnai4p1Z1/7UR6daC0OiEku+5aaagpKmyxa1U77oD9iLUIGae
         I8H5IFz9q+QxrQor4KqNv+CrlwZ2Ek2HDch0q6D6+Fyz0rmn4t5j0dmICjLn1W3vGxoZ
         KeW1fOAMk114KVMYg+z948mTMAziC1GJ61F3evsN1IYYeWLHkyNzXBD4rxoNAjPKwVyO
         +O8pFSULYxm/24HTVxF8lBYUkwyW9tsHoJxATKU7lrNgHHVeR8qjX3G7qMdSDqCJre5n
         kTQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PosDMkG+3b2WnQITwUav04ZdBxC7iRGK+NJhwT/0G9g=;
        b=jlXA7oNdAcS8Pa7jZvOfu/pTF9IonjUBGPlBLz9q6UbfmqNJ6CAtlfsRfTEeLJVU+v
         DX0aDXSljacn6g61IMmFUVs8GpdDAERQlPL2uKf18/16UpOxkhQ1YYrNH0uc7cD6Uw0O
         KoZFIM7aTAHE5X26QRTz8/+xfL08T6cTwaFVIO3p3HtB/TmIyU7K5HqAQsPfIRoMnF8P
         wUcUAfFDSPcjyZ5GD82RPCiPk2gDnSogDePGRRnowr5ns8d7cwEVEi52lhAkH68+XPSm
         b25HNXNPlVznBpGrEa6V/6VuA4XkaPh6Enq0E4G4dq7G7BqdeYMb4IqJDhAnSg5NKfNs
         kuTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PosDMkG+3b2WnQITwUav04ZdBxC7iRGK+NJhwT/0G9g=;
        b=f1KQoIzH/2UKVUBaKecEu8gkaDWOGbd5UDnvk8U4WRp0Oes9wyQgt4HhZd5NvSeHSe
         wI8pN58ZkwyK4YEJ4tdyI/tU/JG+F03VxVofokeROTeMAYGlDcVwuzJriCRBvcruVPao
         0ELAaqJKaX0ka2y/yCN5pHPlsA5cyzWL/t3Shaj0m7KAPNwFCuzGueSsyOUTV+yUk/qb
         EDeOaVl/9zmb35mWITrLB4fma06nbl4TbZ1DZgfeRRv9oNGwiiCWD0CirHS7w05KvJZe
         dup/jSI3b8pwOtrx6RdzTnrVxr1kdkvjeK3HGAejpKytgVirz1sdzRhXzy2J5l4LiJYs
         w1Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW3EUfdm6n9Yqhp9S+2YJFTlyd8/F3yQdGaWCc66R8HE2ES0Tn4
	PTIzcFSHJDm6zAIt8qNYz2I=
X-Google-Smtp-Source: APXvYqx5ZpwR32d8ie31wcdgxycYUEPA6rFeh9+gHs+K9Tm0edi8oYe4xW9JF7hGwuoR6z5TZWBJTQ==
X-Received: by 2002:a81:b40a:: with SMTP id h10mr25515779ywi.396.1579215959196;
        Thu, 16 Jan 2020 15:05:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5d09:: with SMTP id r9ls3813499ybb.2.gmail; Thu, 16 Jan
 2020 15:05:58 -0800 (PST)
X-Received: by 2002:a25:7e85:: with SMTP id z127mr85210ybc.218.1579215958694;
        Thu, 16 Jan 2020 15:05:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579215958; cv=none;
        d=google.com; s=arc-20160816;
        b=aw++rCC05umkd/do7vnm0Z71yHpoavZ2uVVjJFmV8gHmeidj/j0K4lye8spTOd7co+
         b3M/1iENAZwnN/FnDVm9NC5GdLR+Fk6oDQ+JFgegMMFKsRthMrrx7bwuaEh9U4Xy8PHF
         rxzTzxcgo4jjdvw666qvjJ8tffh/yiAy8G85SekNW7B3YGsosWI8i00u3Uh0lIoq669W
         7wtdquJoSK8ngTKZQAm9EcC6333tG3WGGpdj6yxr/mMQlQt6cNgP8bv3Svqa5ks2LgoS
         EigAvYhtqqytGWEzvSOMzdebVIssXB/vqiYMiKhgbjO2NIMy+xE1t4JfLdggquhTNH/v
         T50Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gMt8+SnETNvSb3er2IKqZvH30KrtlFraAAc0+bmLfy8=;
        b=A7QmKBdT0Ffgdxwf3s8WZoYutfMcfOyQT/6+oUmNOWyscYLvu9iBgbk9jdn0hHbzcj
         duo/D8Iqf87TG/no558FuFJ7nRz2XEqN4M48kUutgeM2Rv1EVXLkeFAg/ZrhDPpqCe7H
         CUB0OWMZQKH4aez8ISX6LeMbhR4FtwJUp90YzdmAZUBpoQFf5pGaEoRZvNldj5czIUiy
         SbrnxSNCJAJo5OFybxL3Mx70mjTjLsdnR7wx3XsHu8YT8jERmfUbuNmN37rjcJsnv8CL
         vcHxcgccm5oQNJ7RlRJ4kDP/ytxftS2wFlwom9+SwQSiTMzDErpJ1sIyTunIl9dpc3v0
         q7Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aCo9b38K;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id s64si1148431ywf.0.2020.01.16.15.05.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 15:05:58 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id z3so9922773qvn.0
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 15:05:58 -0800 (PST)
X-Received: by 2002:ad4:514e:: with SMTP id g14mr5152752qvq.196.1579215958396;
 Thu, 16 Jan 2020 15:05:58 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
 <157918094179.1357254.14428494370073273452.stgit@toke.dk> <CAEf4Bzba5FHN_iN52qRiGisRcauur1FqDY545EwE+RVR-nFvQA@mail.gmail.com>
In-Reply-To: <CAEf4Bzba5FHN_iN52qRiGisRcauur1FqDY545EwE+RVR-nFvQA@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 15:05:47 -0800
Message-ID: <CAEf4BzYaLd25P7Uu=aFHW_=nHOCPdCpZCcoJobhRoSGQUA49HQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 09/11] selftests: Remove tools/lib/bpf from
 include path
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aCo9b38K;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Jan 16, 2020 at 2:41 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Thu, Jan 16, 2020 at 5:28 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
> >
> > From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> >
> > To make sure no new files are introduced that doesn't include the bpf/
> > prefix in its #include, remove tools/lib/bpf from the include path
> > entirely.
> >
> > Instead, we introduce a new header files directory under the scratch to=
ols/
> > dir, and add a rule to run the 'install_headers' rule from libbpf to ha=
ve a
> > full set of consistent libbpf headers in $(OUTPUT)/tools/include/bpf, a=
nd
> > then use $(OUTPUT)/tools/include as the include path for selftests.
> >
> > For consistency we also make sure we put all the scratch build files fr=
om
> > other bpftool and libbpf into tools/build/, so everything stays within
> > selftests/.
> >
> > Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> > ---

BTW, this change also now forces full rebuild regardless if anything
changed or not :(

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzYaLd25P7Uu%3DaFHW_%3DnHOCPdCpZCcoJobhRoSGQUA49HQ%4=
0mail.gmail.com.
