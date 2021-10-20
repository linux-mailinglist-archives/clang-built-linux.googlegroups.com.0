Return-Path: <clang-built-linux+bncBDH2DCX6QMORBZF4YKFQMGQEPOTMZCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5381A435632
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 00:55:34 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id my5-20020a17090b4c8500b001a0bf4025c1sf3350468pjb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 15:55:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634770533; cv=pass;
        d=google.com; s=arc-20160816;
        b=oyeOwXO2nZN0dSGvSZSIn14gCqgEfX04l8PqqglVmoD/N6PcwGfFtznW57vxUrWJJw
         RbbDmPjGsNIUKO3ipTabnrY4u8qGI0iJ5xVvmj70dWGviTuU5FRASzHITNyrX58EsZ1o
         cKGaXk/IrLylS1ZUYb95hRTPrOBMBaUDzmWEt+EONm0VHI7Xg3Hsabp1AqO973A+HUEW
         0VlP6x1xsiRCOlHCMzc+7G5DDTy8enhplMV7TSR14Yu5UuFu6WyaEqOvuLtQDzBTWFIk
         B9E0ja+VdiQQ+Un6hX0up9nhTgM2rqzuVIohdOWjPY1X5s+aTyi4gYj2u12YduGNDqYx
         7WtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature
         :dkim-signature;
        bh=FQnL9rQISCA8xTw4WVTvxcVF+b23useFi1PHoiu1niY=;
        b=QeOFxelQ8EvYqE8/2uzvUoJTfv7ijygYchzhkrC3FcDo7n/jFnLaYpXjbafGUVxSwo
         JGxB52Ps2txfFM83hsLrVVsB1YWeFlLXFf4dG5vAQdy1Qwd4Ha0xWSDxOWnYeXcN+hjU
         WZtPXBE6tONHjj1kjJ9ou77z9xJY7ejEj6IMvPv+bq4sIzx+N/4Lu8HFvI/1We8frMJh
         nLjkXdVwVykn2/vlNlElaPPHHAoH0vwwZWIQm5BaOE5g7L1Q0cUEzq5xqhwN1sR1pT1i
         RK1XZDCYIsA0Z+MbAkys7umnqcvuUjtJpt2ulAQz/D6RiV+9OGB7F/ervbGYd0e6+uUp
         tR5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=L8asQJGA;
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FQnL9rQISCA8xTw4WVTvxcVF+b23useFi1PHoiu1niY=;
        b=Pb+4KZDnNsxn3qvrgH27tmb4FwAUKyXqmhgWWJ35NLGgkfw8899sjT/qLqbQLp71Zj
         SHn3sKn/vKdEcfUFrd6oCEVmBLluHTGGA6GFj/Lmwp89LfRn0lhjfK3FSBXz+HD22D/Y
         +xL0Um4Ld/tsAdM8/GTu+kiDWffT8UB/X/BOzi+STB59XqJDJkD+Ul+8hPWmFhEoW5dD
         1hRX4XkO0xvLD2TD059ROdoqa8po3eg7jlLk6pi2QW1gkYuvHkLGrYaHxlc87YWjcbii
         ZhKfGHBnMoM2GUJNpX7Djsgy5a+lnLFNbbpYY5LCRPC5asj2kGzH2NbVv9cjoksx98ob
         zDmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FQnL9rQISCA8xTw4WVTvxcVF+b23useFi1PHoiu1niY=;
        b=oNqWz7IlH7DFeB5s+QMUdmLu8SW7qTLDW8IXcyLb8a5BpRwIrriekLkeVGZFi2x4tB
         T11ZdOv/Utm+M7dYGIiSsapxTc/jN2GFXliVjlGMKpE1N0kq2y1+RVVh6u7wiIGZHAIp
         E3NDxBKP+nSv6Ta/Lk7UYrayZUAgW+RXaPIbDDuXENnqCmmIjUv4bjRNl0leySq/Eu4e
         5nGgXeTowHzUIKcmJxHP9CdYB7QonvQc73JexC525rUAx5TbJi/R8q65l8KnhQpqR4iz
         VgkXnvKRh4YITKoorBdt+moRw2KKj9WouIgRDuTz2wHX6dtqnoCEq8jFzsRd2dyav9qT
         HDoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FQnL9rQISCA8xTw4WVTvxcVF+b23useFi1PHoiu1niY=;
        b=ud2kBkq3I6FGsVU2MZpaiaY/cBCAsmPA1Q2zXkqGeYDjMuPKjxrG4PIlAHrLfa2iod
         BO14q18f7neR/OZLaFmKp06kQgpqB5bAMCTyjsME/j9BqZHWybEN2w/ZaOznLEhRSuOP
         pizQ582dwll21pItLqejO0Uae36dGyFe5qeaSJOjqazn9c93ufyjNqo0TexT/eTvgcRj
         1VHL0vgqjJnVUV4VKfdz98RqnI9OfdY4700Id1K/69PKxezJqgXwl+J0/2VDk7PQ/Dwh
         bJeZt++tSYa/l+TjujNBSpfRgEoISLrKQmNAUtcdOJCQ5svUz0Y2V5hgPXl3L3O1GfX4
         /M1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532paQoX4edxhL0qZF/KNx+8ZwJQ3k2JFOHFCm9oAKepK1rcqOzn
	8CiXrffn6pdwKtDRl1hHsyE=
X-Google-Smtp-Source: ABdhPJyK2+XnNKtHyM7wZkeOjBhrb268icS0yGVrGmYRO6kdvOpjOLiDAFRxmvOP9Ugzhse7fGRqyA==
X-Received: by 2002:aa7:8246:0:b0:44b:4870:1b09 with SMTP id e6-20020aa78246000000b0044b48701b09mr1618969pfn.82.1634770532981;
        Wed, 20 Oct 2021 15:55:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6643:: with SMTP id z3ls1258417pgv.3.gmail; Wed, 20 Oct
 2021 15:55:32 -0700 (PDT)
X-Received: by 2002:a63:e510:: with SMTP id r16mr1630790pgh.34.1634770532242;
        Wed, 20 Oct 2021 15:55:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634770532; cv=none;
        d=google.com; s=arc-20160816;
        b=o74SXbSNZZhiq/iF/+olXGMufnQnYKTQPGWiO0il44kXsK0SPZgyWv9sTz1GLqbIKr
         UPWnX2pilgobMsf3dRLUBGkwmZTcR6fvOdYBWEm8cxl9yHGMOaQaERYn4DCAiaOel3zs
         IeFuLLTRhelzRLYnnpa1eEoC4Y5Vw3Qq3J3zWsWnQ2z5YIf3vOZ3oIFvvLO6h+l8muE0
         aIA2AevfCkQcs6A590BpPX7MCcA6pgrr9f8oyCIAlv6iT/b39bqTow5BBTs5vPSBQAfn
         TU5z9ZcQxGBB6b4KTfFzViBhTUOLBlNK9UM+00F5q0m570X5V5N4xiKAySoO22n3hnZ5
         +8jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=cPiacAHVzcrhdUz4ZTtN/fpqDLeX0mVZT75Tk2+KOqw=;
        b=v9xUMcfemwkJxjciXNomy6ZphOLSVat8UxCUDO+Ewz68oRbTmjn6ftxm5vCj9zuxlc
         o2zI0uKUKosj3LbhKDihCLknYEqkJ+jNbu5zPhYuXyMFYCLDE0oxwDz2+3pqxI2/Xu+y
         Z7oAvfMoyUmbkmLOYED6VtvToX8u3S7dyNMTlF9THvde++/ym5Cvod52KDsD3ocZiB54
         u8PhtfKdh1ucF9InEdAIGwQx5n4g/BP1KMbueSr7g0wvJcpcSyKsenfEODwY9Lf1dBaE
         oTQ3hlj2dA9wwKVUnsaxGGSxxYjpdH/ZQHwTQW4cBZqCMjgzQ537MREJ+CZpf+PMITTq
         Zo9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=L8asQJGA;
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id q75si290580pfc.5.2021.10.20.15.55.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 15:55:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Received: by mail-ot1-x32b.google.com with SMTP id w12-20020a056830410c00b0054e7ceecd88so8322977ott.2
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 15:55:32 -0700 (PDT)
X-Received: by 2002:a05:6830:31a8:: with SMTP id q8mr1708511ots.156.1634770531707;
        Wed, 20 Oct 2021 15:55:31 -0700 (PDT)
Received: from [172.16.0.2] ([8.48.134.34])
        by smtp.googlemail.com with ESMTPSA id y4sm707047oix.23.2021.10.20.15.55.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 15:55:31 -0700 (PDT)
Message-ID: <cc00fa9d-3f18-f850-4cdc-eb81145bdc47@gmail.com>
Date: Wed, 20 Oct 2021 16:55:28 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.2.0
Subject: Re: [PATCH bpf-next 07/10] bpf: Add helpers to query conntrack info
Content-Language: en-US
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Florian Westphal <fw@strlen.de>
Cc: Kumar Kartikeya Dwivedi <memxor@gmail.com>,
 Maxim Mikityanskiy <maximmi@nvidia.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI
 <yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Brendan Jackman <jackmanb@google.com>, Florent Revest <revest@chromium.org>,
 Joe Stringer <joe@cilium.io>, Lorenz Bauer <lmb@cloudflare.com>,
 Tariq Toukan <tariqt@nvidia.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
 <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
 <20211020092844.GI28644@breakpoint.cc> <87h7dcf2n4.fsf@toke.dk>
 <20211020095815.GJ28644@breakpoint.cc> <875ytrga3p.fsf@toke.dk>
 <20211020124457.GA7604@breakpoint.cc> <87r1cfe7sx.fsf@toke.dk>
From: David Ahern <dsahern@gmail.com>
In-Reply-To: <87r1cfe7sx.fsf@toke.dk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dsahern@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=L8asQJGA;       spf=pass
 (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::32b as
 permitted sender) smtp.mailfrom=dsahern@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 10/20/21 2:54 PM, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>> Sure, but I'm not sure I understand the use case.
>>
>> Insertion at XDP layer turns off netfilters NAT capability, so its
>> incompatible with the classic forwarding path.
>>
>> If thats fine, why do you need to insert into the conntrack table to
>> begin with?  The entire infrastructure its designed for is disabled...
> One of the major selling points of XDP is that you can reuse the
> existing kernel infrastructure instead of having to roll your own. So
> sure, one could implement their own conntrack using BPF maps (as indeed,
> e.g., Cilium has done), but why do that when you can take advantage of
> the existing one in the kernel? Same reason we have the bpf_fib_lookup()
> helper...
>=20

Exactly, and a key point is that it allows consistency between XDP fast
path and full stack slow path. e.g., the BPF program is removed or
defers a flow to full stack for some reason.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cc00fa9d-3f18-f850-4cdc-eb81145bdc47%40gmail.com.
